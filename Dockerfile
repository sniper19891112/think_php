# Use the official PHP 7.3 image with Apache
FROM php:7.3-apache

# Install any PHP extensions you need
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the content of the public folder to the Apache document root
COPY public/ /var/www/html/

# Expose port 80 to access the Apache server
EXPOSE 80
