FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
