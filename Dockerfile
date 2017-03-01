FROM php:7.1-fpm-alpine
RUN apk add --no-cache libpng-dev libmcrypt-dev libxml2-dev freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev 
RUN docker-php-ext-install pdo_mysql && \
    docker-php-ext-install calendar && \ 
    docker-php-ext-install gd && \
    docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install mcrypt && \
    docker-php-ext-install soap && \
    docker-php-ext-install zip && \
    docker-php-ext-install mysqli


