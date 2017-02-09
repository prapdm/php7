FROM php:7.1-fpm-alpine
RUN apk add --no-cache --virtual .build-dependencies libpng-dev libmcrypt-dev libxml2-dev
RUN docker-php-ext-install pdo_mysql && \
    docker-php-ext-install calendar && \ 
    docker-php-ext-install gd && \
    docker-php-ext-install mcrypt && \
    docker-php-ext-install soap && \
    docker-php-ext-install zip && \
    docker-php-ext-install mysqli


