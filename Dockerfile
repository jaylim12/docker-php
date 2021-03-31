FROM php:7.4

RUN apt update -y && \
    apt install -y \
        git \
        zlib1g-dev \
        libzip-dev \
        libpng-dev

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd 

RUN docker-php-ext-install pdo_mysql 

RUN curl -s -o /usr/bin/composer 'https://getcomposer.org/download/1.10.20/composer.phar'

RUN chmod 755 /usr/bin/composer

WORKDIR /app

CMD ["php", "-a"]
