# Многоступенчатая сборка для оптимизации размера образа
FROM node:20-alpine AS builder

# Установка системных зависимостей для сборки
RUN apk add --no-cache python3 make g++

# Создание рабочей директории
WORKDIR /app

# Копирование файлов зависимостей
COPY package*.json ./

# Установка всех зависимостей (включая dev для сборки)
RUN npm ci --include=dev

# Копирование исходного кода
COPY . .

# Сборка приложения
RUN npm run build

# Продакшн образ
FROM node:20-alpine AS production

# Установка curl для healthcheck
RUN apk add --no-cache curl wget

# Создание пользователя для безопасности
RUN addgroup -g 1001 -S nuxt && \
    adduser -S nuxt -u 1001

# Создание рабочей директории
WORKDIR /app

# Копирование файлов зависимостей
COPY package*.json ./

# Установка только продакшн зависимостей
RUN npm ci --omit=dev && npm cache clean --force

# Копирование собранного приложения из builder
COPY --from=builder --chown=nuxt:nuxt /app/.output ./.output
COPY --from=builder --chown=nuxt:nuxt /app/public ./public

# Создание директории для uploads
RUN mkdir -p uploads && chown -R nuxt:nuxt uploads

# Переключение на непривилегированного пользователя
USER nuxt

# Настройка переменных окружения
ENV NODE_ENV=production
ENV NITRO_HOST=0.0.0.0
ENV NITRO_PORT=3000

# Открытие порта
EXPOSE 3000

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000 || exit 1

# Запуск приложения
CMD ["node", ".output/server/index.mjs"]