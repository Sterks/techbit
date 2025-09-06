#!/bin/bash

# Скрипт для развертывания TechBit на сервере

set -e

echo "🚀 Развертывание TechBit на сервере..."

# Цвета для вывода
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Функция для вывода сообщений
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

# Проверка Docker
if ! command -v docker &> /dev/null; then
    print_error "Docker не установлен!"
    exit 1
fi

if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    print_error "Docker Compose не установлен!"
    exit 1
fi

# Создание директорий
print_status "Создание необходимых директорий..."
mkdir -p nginx/sites-available nginx/sites-enabled uploads

# Проверка .env файла
if [ ! -f .env ]; then
    print_warning ".env файл не найден!"
    if [ -f env.example ]; then
        print_status "Копирование env.example в .env..."
        cp env.example .env
        print_warning "Не забудьте настроить переменные в .env файле!"
    else
        print_error "env.example файл не найден!"
        exit 1
    fi
fi

# Создание символической ссылки для nginx
if [ -f nginx/sites-available/techbit.conf ] && [ ! -f nginx/sites-enabled/techbit.conf ]; then
    print_status "Создание символической ссылки для nginx..."
    ln -sf /etc/nginx/sites-available/techbit.conf nginx/sites-enabled/techbit.conf
fi

# Остановка старых контейнеров
print_status "Остановка старых контейнеров..."
docker-compose -f docker-compose.prod.yml down --remove-orphans || true

# Загрузка последнего образа
print_status "Загрузка последнего образа из Docker Hub..."
docker pull sterks/techbit-site:latest

# Запуск приложения
print_status "Запуск приложения..."
docker-compose -f docker-compose.prod.yml up -d

# Проверка статуса
print_status "Проверка статуса контейнеров..."
sleep 5
docker-compose -f docker-compose.prod.yml ps

# Проверка логов
print_status "Последние логи приложения:"
docker-compose -f docker-compose.prod.yml logs --tail 10 app

print_success "Развертывание завершено!"
print_status "Приложение доступно по адресу: http://your-domain.com"
print_warning "Не забудьте:"
echo "  1. Настроить домен в nginx/sites-available/techbit.conf"
echo "  2. Обновить email и домен в docker-compose.prod.yml для certbot"
echo "  3. Настроить переменные окружения в .env"
echo "  4. Запустить certbot для получения SSL сертификата"
