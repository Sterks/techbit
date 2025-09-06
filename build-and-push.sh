#!/bin/bash

# =============================================================================
# СБОРКА И ПУБЛИКАЦИЯ DOCKER ОБРАЗА TECHBIT
# =============================================================================
#
# ИСПОЛЬЗОВАНИЕ:
#   ./build-and-push.sh [версия]
#   
# ПРИМЕРЫ:
#   ./build-and-push.sh          # Соберет версию "latest"
#   ./build-and-push.sh v1.0.0   # Соберет версию "v1.0.0" и "latest"
#
# ЧТО ДЕЛАЕТ СКРИПТ:
# - Проверяет авторизацию в Docker Hub
# - Создает мультиархитектурный builder (AMD64 + ARM64)
# - Собирает образ для обеих архитектур
# - Публикует в Docker Hub: sterks/techbit-site
#
# ТРЕБОВАНИЯ:
# - Docker с поддержкой buildx
# - Авторизация в Docker Hub (docker login)
#
# =============================================================================

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
echo ""
echo "=============================================================================
DOCKER ОБРАЗ ГОТОВ К РАЗВЕРТЫВАНИЮ!
============================================================================="
print_status "Опубликованные теги:"
echo "  - sterks/techbit-site:$VERSION"
if [ "$VERSION" != "latest" ]; then
    echo "  - sterks/techbit-site:latest"
fi
echo ""
echo "РАЗВЕРТЫВАНИЕ НА СЕРВЕРЕ:"
echo "  1. Автоматическая установка (рекомендуется):"
echo "     curl -sSL https://raw.githubusercontent.com/your-repo/setup.sh | bash"
echo ""
echo "  2. Ручная установка:"
echo "     wget https://raw.githubusercontent.com/your-repo/setup.sh"
echo "     chmod +x setup.sh && ./setup.sh"
echo ""
echo "ЛОКАЛЬНОЕ ТЕСТИРОВАНИЕ:"
echo "  docker compose up -d"
echo ""
echo "ОБНОВЛЕНИЕ НА СЕРВЕРЕ:"
echo "  ./setup.sh  # Запустите скрипт заново"
echo ""
echo "============================================================================="
