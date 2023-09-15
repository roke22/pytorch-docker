FROM pytorch/pytorch:latest

RUN apt-get update && \
    apt-get -y install wget php7.4-fpm php7.4-bz2 php7.4-zip php7.4-curl php7.4-common php7.4-mbstring php7.4-cli php7.4-soap php7.4-xml php7.4-bcmath php7.4-pgsql php7.4-intl php7.4-gd php-ssh2 unzip --no-install-recommends \
    && apt install --only-upgrade libpcre2-8-0

RUN apt-get install -y python3.8

RUN wget https://getcomposer.org/download/latest-stable/composer.phar -O /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

ENTRYPOINT ["tail", "-f", "/dev/null"]
