#!/bin/bash

# =============================================================================
# УНИВЕРСАЛЬНАЯ УСТАНОВКА И РАЗВЕРТЫВАНИЕ TECHBIT
# =============================================================================
#
# Этот скрипт может работать в двух режимах:
#
# 1. ПОЛНАЯ УСТАНОВКА (на чистом сервере):
#    curl -sSL https://raw.githubusercontent.com/your-repo/setup.sh | bash
#    - Устанавливает Docker (если нужно)
#    - Скачивает все файлы проекта
#    - Настраивает окружение
#    - Развертывает приложение
#
# 2. ЛОКАЛЬНОЕ РАЗВЕРТЫВАНИЕ (если файлы уже есть):
#    ./setup.sh
#    - Проверяет требования
#    - Развертывает приложение
#    - Настраивает SSL
#
# ДОМЕН: techbit.su | EMAIL: runov.denis@yandex.ru
# =============================================================================

set -e

# Цвета для вывода
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

print_status() { echo -e "${BLUE}[INFO]${NC} $1"; }
print_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Определяем режим работы
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ -f "$SCRIPT_DIR/docker-compose.yml" && -f "$SCRIPT_DIR/nginx/nginx.conf" ]]; then
    MODE="local"
    print_status "Режим: Локальное развертывание"
else
    MODE="install"
    print_status "Режим: Полная установка"
fi

echo "🚀 TechBit - Универсальная установка и развертывание"
echo "============================================================================="

# =============================================================================
# ФУНКЦИИ УСТАНОВКИ СИСТЕМНЫХ КОМПОНЕНТОВ
# =============================================================================

install_docker() {
    print_status "Установка Docker..."
    
    # Определяем дистрибутив
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        OS=$ID
    else
        print_error "Не удается определить дистрибутив Linux"
        exit 1
    fi
    
    case $OS in
        ubuntu|debian)
            # Обновление пакетов
            sudo apt-get update
            
            # Установка зависимостей
            sudo apt-get install -y \
                ca-certificates \
                curl \
                gnupg \
                lsb-release
            
            # Добавление GPG ключа Docker
            sudo mkdir -p /etc/apt/keyrings
            curl -fsSL https://download.docker.com/linux/$OS/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
            
            # Добавление репозитория Docker
            echo \
                "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/$OS \
                $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
            
            # Установка Docker
            sudo apt-get update
            sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
            ;;
        centos|rhel|fedora)
            sudo yum install -y yum-utils
            sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
            sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
            sudo systemctl start docker
            sudo systemctl enable docker
            ;;
        *)
            print_error "Неподдерживаемый дистрибутив: $OS"
            print_status "Установите Docker вручную: https://docs.docker.com/engine/install/"
            exit 1
            ;;
    esac
    
    # Добавление пользователя в группу docker
    sudo usermod -aG docker $USER
    
    print_success "Docker установлен!"
    print_warning "Перелогиньтесь или выполните: newgrp docker"
}

check_system_requirements() {
    print_status "Проверка системных требований..."
    
    # Проверка ОС
    if [[ "$OSTYPE" != "linux-gnu"* ]]; then
        print_error "Этот скрипт работает только на Linux"
        exit 1
    fi
    
    # Проверка прав
    if [[ $EUID -eq 0 ]]; then
        print_error "Не запускайте этот скрипт от root!"
        print_status "Используйте обычного пользователя с sudo правами"
        exit 1
    fi
    
    # Проверка Docker
    if ! command -v docker &> /dev/null; then
        print_warning "Docker не найден"
        if [[ $MODE == "install" ]]; then
            read -p "Установить Docker автоматически? (y/N): " -n 1 -r
            echo
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                install_docker
                # После установки Docker нужно перелогиниться
                print_warning "Docker установлен. Перезапустите скрипт после перелогина:"
                print_status "logout && ssh user@server"
                print_status "curl -sSL https://your-domain/setup.sh | bash"
                exit 0
            else
                print_error "Docker необходим для работы приложения"
                exit 1
            fi
        else
            print_error "Docker не установлен! Установите Docker и повторите."
            exit 1
        fi
    fi
    
    # Проверка docker compose
    if ! docker compose version &> /dev/null; then
        print_error "Docker Compose не найден!"
        print_status "Установите Docker Compose и повторите"
        exit 1
    fi
    
    # Проверка портов
    print_status "Проверка портов 80 и 443..."
    if ss -tlnp 2>/dev/null | grep -q ":80 " || netstat -tlnp 2>/dev/null | grep -q ":80 "; then
        print_warning "Порт 80 уже используется"
    fi
    if ss -tlnp 2>/dev/null | grep -q ":443 " || netstat -tlnp 2>/dev/null | grep -q ":443 "; then
        print_warning "Порт 443 уже используется"
    fi
    
    print_success "Системные требования проверены"
}

# =============================================================================
# ФУНКЦИИ ЗАГРУЗКИ И НАСТРОЙКИ ПРОЕКТА
# =============================================================================

create_env_file() {
    print_status "Создание файла .env..."
    
    cat > .env << 'EOF'
# =============================================================================
# КОНФИГУРАЦИЯ TECHBIT ДЛЯ ПРОДАКШЕНА
# =============================================================================

# Режим работы приложения
NODE_ENV=production
EMAIL_TEST_MODE=false

# =============================================================================
# НАСТРОЙКИ SMTP ДЛЯ ОТПРАВКИ ПОЧТЫ
# =============================================================================
# Для Yandex Mail (рекомендуется):
SMTP_HOST=smtp.yandex.ru
SMTP_PORT=465
SMTP_SECURE=true

# Для Gmail (альтернатива):
# SMTP_HOST=smtp.gmail.com
# SMTP_PORT=587
# SMTP_SECURE=false

# Ваши учетные данные (ОБЯЗАТЕЛЬНО ЗАПОЛНИТЕ!)
SMTP_USER=runov.denis@yandex.ru
SMTP_PASS=ваш-пароль-приложения-здесь
SMTP_FROM=runov.denis@yandex.ru
ADMIN_EMAIL=runov.denis@yandex.ru

# =============================================================================
# НАСТРОЙКИ TELEGRAM УВЕДОМЛЕНИЙ (ОПЦИОНАЛЬНО)
# =============================================================================
# Получите токен бота у @BotFather в Telegram
# Узнайте chat_id, написав боту @userinfobot
TELEGRAM_BOT_TOKEN=ваш-токен-бота-здесь
TELEGRAM_CHAT_ID=ваш-chat-id-здесь
EOF

    print_success "Файл .env создан с шаблоном конфигурации"
}

download_project_files() {
    print_status "Создание директории проекта..."
    PROJECT_DIR="$HOME/techbit"
    mkdir -p "$PROJECT_DIR"
    cd "$PROJECT_DIR"
    
    print_status "Скачивание файлов проекта..."
    
    # Список файлов для скачивания
    FILES=(
        "docker-compose.yml"
        "Dockerfile"
        "nginx/nginx.conf"
        "nginx/Dockerfile"
        "nginx/sites-available/techbit.conf"
        "nginx/sites-available/techbit-http.conf"
    )
    
    BASE_URL="https://raw.githubusercontent.com/your-repo/techbit-site/main"
    
    for file in "${FILES[@]}"; do
        print_status "Скачивание $file..."
        mkdir -p "$(dirname "$file")"
        if command -v curl &> /dev/null; then
            curl -sSL "$BASE_URL/$file" -o "$file"
        elif command -v wget &> /dev/null; then
            wget -q "$BASE_URL/$file" -O "$file"
        else
            print_error "Не найден curl или wget для скачивания файлов"
            print_status "Установите curl: sudo apt-get install curl"
            exit 1
        fi
    done
    
    # Создание файла .env из встроенного шаблона
    create_env_file
    
    print_success "Файлы проекта скачаны в $PROJECT_DIR"
}

setup_environment() {
    print_status "Настройка переменных окружения..."
    
    if [[ ! -f ".env" ]]; then
        create_env_file
        
        print_warning "ОБЯЗАТЕЛЬНО настройте файл .env перед продолжением!"
        echo ""
        echo "ОСНОВНЫЕ ПАРАМЕТРЫ ДЛЯ НАСТРОЙКИ:"
        echo "  SMTP_USER=ваш-email@yandex.ru"
        echo "  SMTP_PASS=ваш-пароль-приложения"
        echo "  TELEGRAM_BOT_TOKEN=токен-бота (опционально)"
        echo "  TELEGRAM_CHAT_ID=ваш-chat-id (опционально)"
        echo ""
        
        read -p "Открыть редактор для настройки .env? (Y/n): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Nn]$ ]]; then
            ${EDITOR:-nano} .env
        fi
    else
        print_success "Файл .env уже существует"
    fi
}

check_domain_dns() {
    print_status "Проверка DNS для techbit.su..."
    
    if command -v nslookup &> /dev/null; then
        if ! nslookup techbit.su &> /dev/null; then
            print_warning "Домен techbit.su не разрешается"
            print_warning "Убедитесь, что домен указывает на IP этого сервера"
            read -p "Продолжить? (y/N): " -n 1 -r
            echo
            if [[ ! $REPLY =~ ^[Yy]$ ]]; then
                exit 1
            fi
        else
            print_success "DNS настроен корректно"
        fi
    else
        print_warning "nslookup не найден, пропускаем проверку DNS"
    fi
}

# =============================================================================
# ФУНКЦИИ РАЗВЕРТЫВАНИЯ ПРИЛОЖЕНИЯ
# =============================================================================

deploy_application() {
    print_status "Развертывание приложения..."
    
    # Остановка старых контейнеров
    print_status "Остановка старых контейнеров..."
    docker compose down --remove-orphans || true
    
    # Создание необходимых директорий
    mkdir -p uploads
    
    # Выбор режима развертывания
    print_status "Выбор режима развертывания..."
    echo "1. Использовать готовый образ из Docker Hub (быстро)"
    echo "2. Собрать образ локально (медленно, но актуально)"
    read -p "Выберите режим (1/2): " -n 1 -r
    echo
    
    if [[ $REPLY == "2" ]]; then
        print_status "Переключение на локальную сборку..."
        # Переключаем docker-compose.yml на локальную сборку
        sed -i 's|image: sterks/techbit-site:latest|# image: sterks/techbit-site:latest|' docker-compose.yml
        sed -i 's|# build:|build:|' docker-compose.yml
        sed -i 's|#   context: .|  context: .|' docker-compose.yml
        sed -i 's|#   dockerfile: Dockerfile|  dockerfile: Dockerfile|' docker-compose.yml
        
        print_status "Сборка образа приложения..."
        docker compose build app
    else
        print_status "Загрузка готового образа приложения..."
        docker pull sterks/techbit-site:latest
    fi
    
    # Запуск приложения и nginx
    print_status "Запуск приложения и nginx..."
    docker compose up -d app nginx
    
    # Ожидание запуска
    print_status "Ожидание запуска сервисов..."
    sleep 10
    
    # Проверка статуса
    print_status "Проверка статуса контейнеров:"
    docker compose ps
}

setup_ssl_certificate() {
    print_status "Настройка SSL сертификата..."
    
    # Проверка доступности по HTTP
    print_status "Проверка доступности сайта по HTTP..."
    if curl -s -o /dev/null -w "%{http_code}" http://localhost | grep -q "200"; then
        print_success "Сайт доступен по HTTP"
        
        # Попытка получения SSL сертификата
        print_status "Получение SSL сертификата от Let's Encrypt..."
        print_warning "Убедитесь, что домен techbit.su указывает на IP этого сервера"
        
        if docker compose --profile ssl run --rm certbot; then
            print_success "SSL сертификат получен!"
            
            # Переключение на HTTPS конфигурацию
            print_status "Переключение на HTTPS конфигурацию..."
            # Обновляем docker-compose.yml для использования HTTPS конфигурации
            sed -i 's|techbit-http.conf:/etc/nginx/conf.d/default.conf|techbit.conf:/etc/nginx/conf.d/default.conf|' docker-compose.yml
            docker compose restart nginx
            
            # Запуск автообновления сертификатов
            print_status "Запуск автообновления сертификатов..."
            docker compose --profile ssl up -d certbot-renewal
            
            print_success "HTTPS настроен! Сайт доступен: https://techbit.su"
        else
            print_warning "Не удалось получить SSL сертификат"
            print_warning "Сайт остается доступным по HTTP: http://techbit.su"
            print_status "Для повторной попытки выполните:"
            print_status "  docker compose --profile ssl run --rm certbot"
            print_status "  cp nginx/sites-available/techbit.conf nginx/sites-enabled/default.conf"
            print_status "  docker compose build nginx && docker compose restart nginx"
        fi
    else
        print_error "Сайт недоступен по HTTP!"
        print_status "Проверьте логи: docker compose logs app nginx"
        return 1
    fi
}

# =============================================================================
# ГЛАВНАЯ ФУНКЦИЯ
# =============================================================================

main() {
    # Проверка системных требований
    check_system_requirements
    
    if [[ $MODE == "install" ]]; then
        # Режим полной установки
        download_project_files
        setup_environment
    else
        # Режим локального развертывания
        print_status "Используем существующие файлы в $SCRIPT_DIR"
        cd "$SCRIPT_DIR"
        
        # Проверка .env файла
        if [[ ! -f ".env" ]]; then
            setup_environment
        fi
    fi
    
    # Проверка DNS
    check_domain_dns
    
    # Развертывание приложения
    deploy_application
    
    # Настройка SSL
    setup_ssl_certificate
    
    # Финальный статус
    print_status "Финальный статус контейнеров:"
    docker compose ps
    
    # Успешное завершение
    print_success "Установка и развертывание завершены!"
    echo ""
    echo "============================================================================="
    echo "TECHBIT УСПЕШНО РАЗВЕРНУТ!"
    echo "============================================================================="
    print_status "HTTP:  http://techbit.su"
    if [[ -f nginx/sites-enabled/default.conf ]] && grep -q "listen 443" nginx/sites-enabled/default.conf; then
        print_status "HTTPS: https://techbit.su"
    fi
    echo ""
    echo "ПОЛЕЗНЫЕ КОМАНДЫ:"
    echo "  docker compose ps              # Статус контейнеров"
    echo "  docker compose logs -f app     # Логи приложения"
    echo "  docker compose logs -f nginx   # Логи nginx"
    echo "  docker compose restart         # Перезапуск всех сервисов"
    echo "  docker compose down            # Остановка всех сервисов"
    echo "  docker compose pull app        # Обновление образа приложения"
    echo ""
    echo "ОБНОВЛЕНИЕ ПРИЛОЖЕНИЯ:"
    echo "  ./setup.sh                     # Запустите этот скрипт заново"
    echo ""
echo "РУЧНАЯ НАСТРОЙКА SSL (если автоматически не получилось):"
echo "  1. Проверьте DNS:    nslookup techbit.su"
echo "  2. Проверьте HTTP:   curl -I http://techbit.su"
echo "  3. Получите SSL:     docker compose --profile ssl run --rm certbot"
echo "  4. Переключите HTTPS: sed -i 's|techbit-http.conf|techbit.conf|' docker-compose.yml"
echo "  5. Перезапустите:    docker compose restart nginx"
    echo ""
    echo "============================================================================="
}

# Запуск главной функции
main "$@"
