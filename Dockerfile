FROM php
LABEL mantainer="Alessio Moiso <alessio@inerziasoft.eu>"
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install git nodejs libcurl4-gnutls-dev libicu-dev libmcrypt-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev sshpass -yqq
RUN docker-php-ext-install mbstring mcrypt curl json intl gd xml zip bz2 opcache
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
RUN npm install -g yarn
