openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout ./data/cert/key.pem -out ./data/cert/cert.pem -subj "/C=US/ST=New Jersey/L=Basking Ridge/O=Global Security/OU=IT Department/CN=dummy.com"

#!/bin/bash
docker-compose down --remove-orphans

docker volume rm zucchini_db_data
docker volume create --name=zucchini_db_data
#sudo unzip -n _data.zip -d /var/lib/docker/volumes/zucchini_db_data/_data
docker volume rm zucchini_wp_html
docker volume create --name=zucchini_wp_html
#sudo unzip -n _html.zip -d /var/lib/docker/volumes/zucchini_wp_html/

docker-compose up
