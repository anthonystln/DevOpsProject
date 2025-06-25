FROM php:8.2-cli
COPY app/ /var/www/html/
WORKDIR /var/www/html/
CMD ["php", "-S", "0.0.0.0:8080"]