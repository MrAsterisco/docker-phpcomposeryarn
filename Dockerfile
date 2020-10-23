FROM php
LABEL mantainer="Alessio Moiso <alessio@inerziasoft.eu>"
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install git nodejs libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev sshpass libonig-dev libzip-dev rsync -yqq
RUN docker-php-ext-install mbstring curl json intl gd xml zip bz2 opcache
RUN pecl install mcrypt-1.0.3
RUN docker-php-ext-enable mcrypt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
RUN npm install -g yarn
