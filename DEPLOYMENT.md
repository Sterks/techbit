# 🚀 Развертывание TechBit на сервере

## 📋 Предварительные требования

### На сервере должны быть установлены:
- **Docker** (версия 20.10+)
- **Docker Compose** (версия 2.0+)
- **Git**

### Установка Docker на Ubuntu/Debian:
```bash
# Обновление системы
sudo apt update && sudo apt upgrade -y

# Установка Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Добавление пользователя в группу docker
sudo usermod -aG docker $USER

# Установка Docker Compose
sudo apt install docker-compose-plugin

# Перезагрузка для применения изменений
sudo reboot
```

## 🔧 Развертывание

### 1. Клонирование репозитория
```bash
git clone <your-repository-url> techbit-site
cd techbit-site
```

### 2. Настройка переменных окружения
```bash
# Копирование примера конфигурации
cp env.example .env

# Редактирование переменных
nano .env
```

**Обязательно настройте:**
- `SMTP_HOST`, `SMTP_USER`, `SMTP_PASS` - для отправки email
- `ADMIN_EMAIL` - email администратора
- `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHAT_ID` - для уведомлений

### 3. Настройка домена
```bash
# Редактирование конфигурации nginx
nano nginx/sites-available/techbit.conf

# Замените your-domain.com на ваш домен
# Замените certbot команду в docker-compose.prod.yml
nano docker-compose.prod.yml
```

### 4. Запуск развертывания
```bash
# Запуск автоматического скрипта
./deploy-server.sh
```

### 5. Настройка SSL (после запуска)
```bash
# Получение SSL сертификата (замените your-domain.com и email)
docker-compose -f docker-compose.prod.yml run --rm certbot \
  certonly --webroot --webroot-path=/var/www/html \
  --email your-email@example.com --agree-tos --no-eff-email \
  --force-renewal -d your-domain.com

# Перезапуск nginx для применения SSL
docker-compose -f docker-compose.prod.yml restart nginx
```

## 📊 Управление

### Просмотр логов
```bash
# Логи всех сервисов
docker-compose -f docker-compose.prod.yml logs -f

# Логи только приложения
docker-compose -f docker-compose.prod.yml logs -f app

# Логи nginx
docker-compose -f docker-compose.prod.yml logs -f nginx
```

### Обновление приложения
```bash
# Загрузка нового образа
docker pull sterks/techbit-site:latest

# Перезапуск приложения
docker-compose -f docker-compose.prod.yml up -d app
```

### Остановка сервисов
```bash
# Остановка всех сервисов
docker-compose -f docker-compose.prod.yml down

# Остановка с удалением volumes (ОСТОРОЖНО!)
docker-compose -f docker-compose.prod.yml down -v
```

## 🔍 Мониторинг

### Проверка статуса
```bash
# Статус контейнеров
docker-compose -f docker-compose.prod.yml ps

# Использование ресурсов
docker stats

# Проверка доступности
curl -I http://your-domain.com
```

### Проверка SSL
```bash
# Проверка сертификата
openssl s_client -connect your-domain.com:443 -servername your-domain.com

# Автоматическое обновление сертификатов (добавить в crontab)
0 12 * * * /usr/local/bin/docker-compose -f /path/to/techbit-site/docker-compose.prod.yml exec certbot renew --quiet
```

## 🛠️ Устранение неполадок

### Приложение не запускается
```bash
# Проверка логов
docker-compose -f docker-compose.prod.yml logs app

# Проверка переменных окружения
docker-compose -f docker-compose.prod.yml exec app env | grep -E "(SMTP|TELEGRAM)"
```

### Проблемы с SSL
```bash
# Проверка конфигурации nginx
docker-compose -f docker-compose.prod.yml exec nginx nginx -t

# Перезагрузка nginx
docker-compose -f docker-compose.prod.yml restart nginx
```

### Проблемы с email
```bash
# Тест отправки email через контейнер
docker-compose -f docker-compose.prod.yml exec app node -e "
const nodemailer = require('nodemailer');
// Тестовый код для проверки SMTP
"
```

## 📈 Масштабирование

### Несколько экземпляров приложения
```yaml
# В docker-compose.prod.yml
services:
  app:
    image: sterks/techbit-site:latest
    deploy:
      replicas: 3
    # ... остальная конфигурация
```

### Использование внешней базы данных
```yaml
# Добавить в docker-compose.prod.yml
services:
  postgres:
    image: postgres:15-alpine
    environment:
      POSTGRES_DB: techbit
      POSTGRES_USER: techbit
      POSTGRES_PASSWORD: your-password
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

## 🔐 Безопасность

### Рекомендации:
1. **Firewall**: Открыть только порты 80, 443, 22
2. **SSH**: Использовать ключи вместо паролей
3. **Updates**: Регулярно обновлять систему и Docker образы
4. **Backup**: Настроить резервное копирование данных
5. **Monitoring**: Использовать системы мониторинга

### Настройка firewall (ufw):
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
```

## 📞 Поддержка

При возникновении проблем:
1. Проверьте логи: `docker-compose -f docker-compose.prod.yml logs`
2. Убедитесь в правильности настройки `.env`
3. Проверьте доступность портов и домена
4. Обратитесь к документации Docker и nginx
