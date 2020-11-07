#!/bin/bash

if [ -f db.env ]
then
  #export $(cat db.env)
  source db.env
  echo $MYSQL_ROOT_PASSWORD
fi
#docker exec zucchini_db_1 /usr/bin/mysqldump -u root --password="$MYSQL_ROOT_PASSWORD" --routines --databases mysql --tables time_zone time_zone_leap_second time_zone_name time_zone_transition time_zone_transition_type user > dbinit/1_mysql.sql
docker exec zucchini_db_1 /usr/bin/mysqldump -u root --password="$MYSQL_ROOT_PASSWORD" --routines --databases $MYSQL_DATABASE > dbinit/1_$MYSQL_DATABASE.sql
