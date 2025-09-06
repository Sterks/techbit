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

# Проверка авторизации в Docker Hub
if ! docker info | grep -q "Username: sterks"; then
    print_warning "Необходима авторизация в Docker Hub..."
    docker login
fi

# Создание buildx builder если не существует
if ! docker buildx ls | grep -q "multiarch"; then
    print_status "Создание multiarch builder..."
    docker buildx create --use --name multiarch
fi

# Сборка и публикация для обеих архитектур
print_status "Сборка и публикация мультиархитектурного образа..."
if [ "$VERSION" != "latest" ]; then
    docker buildx build --platform linux/amd64,linux/arm64 \
        -t sterks/techbit-site:$VERSION \
        -t sterks/techbit-site:latest \
        --push .
else
    docker buildx build --platform linux/amd64,linux/arm64 \
        -t sterks/techbit-site:latest \
        --push .
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
