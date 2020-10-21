FROM php:7.2-apache

# instala algumas dependencias 
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && apachectl restart \
    && a2enmod rewrite
    
EXPOSE 80