#!/bin/bash

# Скрипт для развертывания TechBit сайта

set -e

echo "🚀 Развертывание TechBit сайта..."

# Проверяем наличие .env файла
if [ ! -f .env ]; then
    echo "❌ Файл .env не найден!"
    echo "Скопируйте env.example в .env и настройте переменные окружения"
    exit 1
fi

# Останавливаем существующие контейнеры
echo "🛑 Остановка существующих контейнеров..."
docker-compose down

# Собираем новые образы
echo "🔨 Сборка Docker образов..."
docker-compose build --no-cache

# Получаем SSL сертификаты (первый запуск)
echo "🔐 Получение SSL сертификатов..."
docker-compose up certbot

# Запускаем все сервисы
echo "▶️ Запуск всех сервисов..."
docker-compose up -d

# Проверяем статус
echo "📊 Статус сервисов:"
docker-compose ps

echo ""
echo "✅ Развертывание завершено!"
echo ""
echo "📱 Сайт доступен по адресу: https://techbit.su"
echo "🔍 Логи приложения: docker-compose logs -f app"
echo "🔍 Логи Nginx: docker-compose logs -f nginx"
echo ""
echo "🔄 Для перезапуска: docker-compose restart"
echo "🛑 Для остановки: docker-compose down"
