FROM php:8.0-apache

# Install the MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Install the PHP MySQL extension
RUN docker-php-ext-install pdo_mysql

# Copy the PHP files into the container's web directory
COPY . /var/www/html/

# Expose port 80 for Apache
EXPOSE 80