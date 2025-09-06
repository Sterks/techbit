#!/bin/bash

# Скрипт развертывания TechBit
# Домен: techbit.su | Email: runov.denis@yandex.ru

set -e

# Цвета
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

print_status() { echo -e "${BLUE}[INFO]${NC} $1"; }
print_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

echo "🚀 Развертывание TechBit на techbit.su"
echo ""

# Проверка Docker
if ! command -v docker &> /dev/null; then
    print_error "Docker не установлен!"
    exit 1
fi

# Остановка старых контейнеров
print_status "Остановка старых контейнеров..."
docker compose down --remove-orphans || true

# Создание директорий
print_status "Создание директорий..."
mkdir -p nginx/sites-enabled uploads

# Проверка .env
if [ ! -f .env ]; then
    print_warning ".env не найден, копирую из примера..."
    cp env.example .env
    print_warning "Настройте переменные в .env перед продолжением!"
    exit 1
fi

# Загрузка образа
print_status "Загрузка образа..."
docker pull sterks/techbit-site:latest

# Запуск основных сервисов
print_status "Запуск приложения и nginx..."
docker compose up -d app nginx

print_status "Ожидание запуска..."
sleep 15

# Проверка статуса
docker compose ps

# Проверка доступности
print_status "Проверка доступности..."
if curl -f -s http://localhost:80 > /dev/null; then
    print_success "Приложение доступно по HTTP!"
    
    # Предложение получить SSL
    echo ""
    read -p "Получить SSL сертификат? (y/N): " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        print_status "Получение SSL сертификата..."
        
        # Получение сертификата
        docker compose --profile ssl run --rm certbot
        
        if [ $? -eq 0 ]; then
            print_success "SSL сертификат получен!"
            
            # Создание символической ссылки для SSL конфигурации
            if [ -f nginx/sites-available/techbit.conf ]; then
                ln -sf ../sites-available/techbit.conf nginx/sites-enabled/default.conf
                docker compose restart nginx
                
                # Запуск автообновления
                docker compose --profile ssl up -d certbot-renewal
                
                print_success "HTTPS настроен! Сайт доступен: https://techbit.su"
            fi
        else
            print_error "Ошибка получения SSL сертификата"
            print_warning "Сайт остается доступным по HTTP"
        fi
    fi
else
    print_error "Приложение недоступно!"
    print_status "Проверьте логи: docker compose logs app"
fi

print_status "Финальный статус:"
docker compose ps

print_success "Развертывание завершено!"
print_status "HTTP: http://techbit.su"
print_status "Логи: docker compose logs -f app"
print_status "Управление: docker compose [up|down|restart]"