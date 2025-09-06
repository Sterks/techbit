#!/bin/bash

# Пошаговое развертывание TechBit на сервере
# Домен: techbit.su
# Email: runov.denis@yandex.ru

set -e

# Цвета для вывода
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

echo "🚀 Пошаговое развертывание TechBit"
echo "Домен: techbit.su"
echo "Email: runov.denis@yandex.ru"
echo ""

# Шаг 1: Остановка старых контейнеров
print_status "Шаг 1: Остановка старых контейнеров..."
docker-compose -f docker-compose.prod.yml down --remove-orphans || true
docker-compose -f docker-compose.simple.yml down --remove-orphans || true

# Шаг 2: Создание директорий
print_status "Шаг 2: Создание необходимых директорий..."
mkdir -p nginx/sites-enabled uploads

# Шаг 3: Проверка .env
print_status "Шаг 3: Проверка .env файла..."
if [ ! -f .env ]; then
    print_warning ".env файл не найден! Копирую из env.example..."
    cp env.example .env
    print_warning "Настройте переменные в .env файле перед продолжением!"
    read -p "Нажмите Enter после настройки .env..."
fi

# Шаг 4: Загрузка образа
print_status "Шаг 4: Загрузка последнего образа..."
docker pull sterks/techbit-site:latest

# Шаг 5: Запуск только HTTP (без SSL)
print_status "Шаг 5: Запуск приложения в HTTP режиме..."
docker-compose -f docker-compose.simple.yml up -d

print_status "Ожидание запуска сервисов..."
sleep 10

# Проверка статуса
docker-compose -f docker-compose.simple.yml ps

print_success "Приложение запущено в HTTP режиме!"
print_status "Проверьте доступность: http://techbit.su"
print_warning "Убедитесь, что домен указывает на ваш сервер!"

echo ""
read -p "Если сайт доступен по HTTP, нажмите Enter для получения SSL сертификата..."

# Шаг 6: Получение SSL сертификата
print_status "Шаг 6: Получение SSL сертификата..."

# Остановка простой версии
docker-compose -f docker-compose.simple.yml down

# Запуск полной версии для получения сертификата
print_status "Запуск с поддержкой certbot..."
docker-compose -f docker-compose.prod.yml up -d app nginx

sleep 5

# Получение сертификата
print_status "Получение SSL сертификата..."
docker-compose -f docker-compose.prod.yml run --rm certbot \
  certonly --webroot --webroot-path=/var/www/html \
  --email runov.denis@yandex.ru --agree-tos --no-eff-email \
  --force-renewal -d techbit.su -d www.techbit.su

if [ $? -eq 0 ]; then
    print_success "SSL сертификат получен!"
    
    # Создание символической ссылки для SSL конфигурации
    print_status "Переключение на HTTPS конфигурацию..."
    ln -sf /etc/nginx/sites-available/techbit.conf nginx/sites-enabled/default.conf
    
    # Перезапуск nginx с SSL
    docker-compose -f docker-compose.prod.yml restart nginx
    
    # Запуск автообновления сертификатов
    docker-compose -f docker-compose.prod.yml up -d certbot-renewal
    
    print_success "Развертывание завершено!"
    print_status "Сайт доступен по адресу: https://techbit.su"
    
else
    print_error "Ошибка получения SSL сертификата!"
    print_warning "Сайт остается доступным по HTTP: http://techbit.su"
fi

# Финальная проверка
print_status "Финальная проверка статуса..."
docker-compose -f docker-compose.prod.yml ps

print_status "Логи приложения:"
docker-compose -f docker-compose.prod.yml logs --tail 5 app
