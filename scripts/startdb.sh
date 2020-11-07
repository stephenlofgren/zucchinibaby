#!/bin/sh
#tar -zcvf _html.tar.gz _html
#if [ "$(ls -A /var/www/html)" ]; then
#    echo "html files already installed"
#else
#    cd /var/backups
#    tar -xvf html.tar.gz -C /var/www/html
#fi
#if [ "$(ls -A /var/www/data)" ]; then
#    echo "data files already installed"
#else
#    tar -xvf /var/backups/data.tar.gz -C /var/lib/mysql
#fi
docker-entrypoint.sh mysqld
sleep "10m"
