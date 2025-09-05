# Многоступенчатая сборка для оптимизации размера образа

# Стадия 1: Сборка приложения
FROM node:20-alpine AS builder

# Устанавливаем необходимые пакеты для сборки native модулей
RUN apk add --no-cache python3 make g++

WORKDIR /app

# Копируем файлы зависимостей
COPY package*.json ./

# Устанавливаем все зависимости (включая dev для сборки)
RUN npm ci

# Копируем исходный код
COPY . .

# Собираем приложение
RUN npm run build

# Стадия 2: Продакшен образ
FROM node:20-alpine AS production

WORKDIR /app

# Копируем только необходимые файлы из стадии сборки
COPY --from=builder /app/.output ./.output
COPY --from=builder /app/package*.json ./

# Устанавливаем только продакшен зависимости
RUN npm ci --omit=dev && npm cache clean --force

# Создаем пользователя для безопасности
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nuxt -u 1001

# Меняем владельца файлов
RUN chown -R nuxt:nodejs /app
USER nuxt

# Открываем порт 3000
EXPOSE 3000

# Устанавливаем переменные окружения
ENV NODE_ENV=production
ENV NITRO_HOST=0.0.0.0
ENV NITRO_PORT=3000

# Запускаем приложение
CMD ["node", ".output/server/index.mjs"]
