# Use the official PHP image with Apache
FROM php:7.3-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Install dependencies
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libpq-dev \
    libicu-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/freetype2 --with-jpeg-dir=/usr/include \
    && docker-php-ext-install zip intl gd pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy the contents of the public directory to the Apache web root
COPY public/ /var/www/html/

# Copy other necessary directories to the appropriate location
COPY application/ /var/www/html/../application/
COPY config/ /var/www/html/../config/
COPY extend/ /var/www/html/../extend/
COPY route/ /var/www/html/../route/
COPY vendor/ /var/www/html/../vendor/
COPY thinkphp/ /var/www/html/../thinkphp/

# Set file permissions (optional)
RUN chmod -R 755 /var/www/html/../
RUN chmod -R 755 /var/www/html/../application/
RUN chmod -R 755 /var/www/html/../application/../config/
RUN chmod -R 755 /var/www/html/../application/../config/app.php

RUN chown -R www-data:www-data /var/www/html/../
RUN chown -R www-data:www-data /var/www/html/../application/
RUN chown -R www-data:www-data /var/www/html/../application/../config/
RUN chown -R www-data:www-data /var/www/html/../application/../config/app.php

# Expose port 80
EXPOSE 80
