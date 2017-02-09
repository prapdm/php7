FROM php:7.1-alpine

RUN apk --no-cache update \
    && apk --no-cache upgrade \
    &&  docker-php-ext-install pdo_mysql 







