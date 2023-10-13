# FROM php:5.6-apache

# RUN sed -i -e 's/deb.debian.org/archive.debian.org/g' \
#            -e 's|security.debian.org|archive.debian.org/|g' \
#            -e '/stretch-updates/d' /etc/apt/sources.list

# RUN apt-get update
# RUN apt-get install --yes --force-yes cron g++ gettext libicu-dev openssl libc-client-dev libkrb5-dev  libxml2-dev libfreetype6-dev libgd-dev libmcrypt-dev bzip2 libbz2-dev libtidy-dev libcurl4-openssl-dev libz-dev libmemcached-dev libxslt-dev

# RUN a2enmod rewrite

# RUN docker-php-ext-install mysql 
# RUN docker-php-ext-enable mysql

# RUN docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr --with-png-dir=/usr
# RUN docker-php-ext-install gd pdo pdo_mysql mysql mysqli  

# COPY php.ini /usr/local/etc/php/

#  php 7 
FROM php:7.4-apache

COPY my-apache2.conf /etc/apache2/apach2.conf

RUN apt-get update
RUN apt-get install --yes --force-yes cron g++ gettext libicu-dev openssl libc-client-dev libkrb5-dev libxml2-dev libfreetype6-dev libgd-dev libmcrypt-dev bzip2 libbz2-dev libtidy-dev libcurl4-openssl-dev libz-dev libmemcached-dev libxslt-dev

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli 
RUN docker-php-ext-enable mysqli
RUN docker-php-ext-install pdo pdo_mysql 
RUN docker-php-ext-enable pdo_mysql

RUN docker-php-ext-configure gd --with-freetype=/usr --with-jpeg=/usr
RUN docker-php-ext-install gd