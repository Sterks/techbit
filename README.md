# 🚀 TechBit - Корпоративный сайт

Современный корпоративный сайт на Nuxt.js с Docker развертыванием.

## ✨ Возможности

- 📧 **Отправка email** через SMTP (Gmail/Yandex)
- 📱 **Telegram уведомления** о заявках
- 🔒 **SSL сертификаты** Let's Encrypt
- 🐳 **Docker** контейнеризация
- 🌐 **Nginx** reverse proxy
- 📊 **Мониторинг** здоровья сервисов

## 🛠 Технологии

- **Frontend**: Nuxt.js 4, Vue.js 3, Tailwind CSS
- **Backend**: Node.js, Nodemailer
- **Инфраструктура**: Docker, Nginx, Certbot
- **Развертывание**: Docker Hub

## 🚀 Быстрый старт

### 1. Клонирование
```bash
git clone <repository-url> techbit-site
cd techbit-site
```

### 2. Настройка окружения
```bash
cp env.example .env
nano .env
```

**Обязательные переменные:**
```env
# Email настройки
SMTP_HOST=smtp.gmail.com
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
ADMIN_EMAIL=runov.denis@yandex.ru

# Telegram (опционально)
TELEGRAM_BOT_TOKEN=your-bot-token
TELEGRAM_CHAT_ID=your-chat-id
```

### 3. Развертывание
```bash
./deploy.sh
```

## 📋 Команды управления

### Основные команды
```bash
# Запуск всех сервисов
docker compose up -d

# Только приложение и nginx
docker compose up -d app nginx

# Получение SSL сертификата
docker compose --profile ssl run --rm certbot

# Просмотр логов
docker compose logs -f app

# Перезапуск
docker compose restart app

# Остановка
docker compose down
```

### SSL управление
```bash
# Получение сертификата (production)
docker compose --profile ssl run --rm certbot

# Тестовый сертификат (staging)
docker compose --profile ssl run --rm -e CERTBOT_ARGS="--staging" certbot

# Обновление сертификата
docker compose exec certbot-renewal certbot renew
```

## 🔧 Структура проекта

```
techbit-site/
├── app/                    # Nuxt приложение
│   ├── pages/             # Страницы сайта
│   └── assets/            # Стили и ресурсы
├── server/api/            # API endpoints
├── nginx/                 # Nginx конфигурация
├── docker-compose.yml     # Docker конфигурация
├── Dockerfile            # Образ приложения
├── deploy.sh             # Скрипт развертывания
└── .env                  # Переменные окружения
```

## 🌐 Nginx конфигурация

### HTTP конфигурация (nginx/sites-available/techbit-http.conf)
Используется для первоначального запуска и получения SSL.

### HTTPS конфигурация (nginx/sites-available/techbit.conf)
Полная конфигурация с SSL и безопасностью.

## 📧 Настройка Email

### Gmail
1. Включите 2FA в аккаунте Google
2. Создайте App Password: https://myaccount.google.com/apppasswords
3. Используйте App Password в `.env`

### Yandex
```env
SMTP_HOST=smtp.yandex.ru
SMTP_PORT=465
SMTP_SECURE=true
SMTP_USER=your-email@yandex.ru
SMTP_PASS=your-password
```

## 📱 Telegram уведомления

1. Создайте бота: @BotFather
2. Получите токен бота
3. Найдите Chat ID: @userinfobot
4. Добавьте в `.env`

## 🔍 Мониторинг

### Проверка статуса
```bash
docker compose ps
docker compose logs app
```

### Healthcheck
Приложение имеет встроенный healthcheck на `/`

### Метрики
- Статус контейнеров
- Логи приложения и nginx
- SSL сертификаты

## 🛡 Безопасность

- Запуск от непривилегированного пользователя
- SSL/TLS шифрование
- Безопасные заголовки HTTP
- Изоляция сети Docker

## 📦 Обновление

### Обновление приложения
```bash
# Локально (после изменений)
./build-and-push.sh

# На сервере
docker pull sterks/techbit-site:latest
docker compose up -d app
```

### Обновление системы
```bash
docker compose pull
docker compose up -d
```

## 🆘 Устранение неполадок

### Приложение не запускается
```bash
docker compose logs app
```

### Проблемы с SSL
```bash
docker compose logs nginx
docker compose --profile ssl logs certbot
```

### Проблемы с email
Проверьте настройки SMTP в `.env` и логи приложения.

## 📞 Поддержка

- **Домен**: techbit.su
- **Email**: runov.denis@yandex.ru
- **Docker Hub**: sterks/techbit-site

---

**Готово к продакшену! 🎯**