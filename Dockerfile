# Используем базовый образ PHP с FPM
FROM php:8.1-fpm

# Устанавливаем необходимые расширения PHP
RUN docker-php-ext-install pdo pdo_mysql

# Копируем файлы приложения в контейнер
COPY ./app /var/www/html

# Устанавливаем рабочую директорию
WORKDIR /var/www/html
