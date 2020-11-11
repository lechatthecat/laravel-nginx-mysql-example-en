FROM php:7.4-fpm-alpine
LABEL maintainer "le chat the cat"

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

# PHP Settings
RUN set -eux && \
  apk add --update-cache --no-cache --virtual=.build-php-dependencies tzdata && \
  apk add --update-cache --no-cache nodejs nodejs-npm && \
  # changer le fuseau horaire
  cp /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
  apk del .build-php-dependencies && \
  docker-php-ext-install pdo_mysql && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
