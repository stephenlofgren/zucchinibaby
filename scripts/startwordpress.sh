#!/bin/sh
#tar -zcvf _html.tar.gz _html
if [ "$(ls -A /var/www/html/wp-admin)" ]; then
    echo "html files already installed"
else
    echo "restoring html files"
    ls -la /var/www/html
    tar -xf /var/backups/html.tar.gz -C /var/www/html
    chown www-data:www-data /var/www/html
    ls -la /var/www/html
fi
#if [ "$(ls -A /var/www/data)" ]; then
#    echo "data files already installed"
#else
#    tar -xvf /var/backups/data.tar.gz -C /var/www/data
#fi
/bin/scripts/wait-for-it.sh db:3306 -t 120 -- "docker-entrypoint.sh" "apache2-foreground"
#sleep "10m"
