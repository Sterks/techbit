FROM nginx:alpine

# Удаляем стандартную конфигурацию
RUN rm /etc/nginx/conf.d/default.conf

# Копируем нашу конфигурацию
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled/ /etc/nginx/conf.d/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
