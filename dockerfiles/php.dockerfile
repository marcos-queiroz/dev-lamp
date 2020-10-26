FROM php:7.2-apache

RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && apachectl restart \
    && a2enmod rewrite

RUN apt-get update -y && apt-get install -y sendmail libpng-dev

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev 

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

# Install Imagick.
RUN apt-get update && apt-get install -y \
    libmagickwand-dev
RUN pecl install imagick
RUN docker-php-ext-enable imagick

EXPOSE 80