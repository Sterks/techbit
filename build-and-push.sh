#!/bin/bash

# Скрипт для сборки и публикации образа в Docker Hub

set -e

# Цвета для вывода
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
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

# Получение версии (можно передать как аргумент)
VERSION=${1:-"latest"}

print_status "🚀 Сборка и публикация TechBit образа..."
print_status "Версия: $VERSION"

# Сборка образа
print_status "Сборка Docker образа..."
docker build -t techbit-site-app:$VERSION .

# Создание тегов
print_status "Создание тегов для Docker Hub..."
docker tag techbit-site-app:$VERSION sterks/techbit-site:$VERSION

if [ "$VERSION" != "latest" ]; then
    docker tag techbit-site-app:$VERSION sterks/techbit-site:latest
fi

# Проверка авторизации в Docker Hub
if ! docker info | grep -q "Username: sterks"; then
    print_warning "Необходима авторизация в Docker Hub..."
    docker login
fi

# Публикация образа
print_status "Публикация образа в Docker Hub..."
docker push sterks/techbit-site:$VERSION

if [ "$VERSION" != "latest" ]; then
    docker push sterks/techbit-site:latest
fi

print_success "Образ успешно опубликован!"
print_status "Доступные теги:"
echo "  - sterks/techbit-site:$VERSION"
if [ "$VERSION" != "latest" ]; then
    echo "  - sterks/techbit-site:latest"
fi

print_warning "Для развертывания на сервере выполните:"
echo "  docker pull sterks/techbit-site:latest"
echo "  docker compose -f docker-compose.prod.yml up -d"
