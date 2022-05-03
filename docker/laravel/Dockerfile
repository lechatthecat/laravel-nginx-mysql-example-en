FROM php:7.4-fpm-alpine
LABEL maintainer "le chat the cat"

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer

# PHP Settings
RUN set -eux && \
  # the dependencies "build-php-dependencies" that are necessary only when building will be deleted after build 
  apk add --update-cache --no-cache --virtual=.build-php-dependencies tzdata && \
  # other dependencies will not be deleted but saved permanently
  apk add --update-cache --no-cache nodejs npm && \
  # change the localtime
  cp /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
  # Delete the build dependencies
  apk del .build-php-dependencies && \
  docker-php-ext-install pdo_mysql && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
