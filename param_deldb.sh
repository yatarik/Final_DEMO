#!/bin/bash
 
printf "\n-----------------------\n"
printf "Sript: drop database"
printf "\n-----------------------\n"

#mysql_config_editor set --login-path=local --host=localhost --user=username --password
mysql --login-path=local  -e "show databases;"

printf "\n<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>\n"

printf  " Enter database name what you want to delete: "
read dbname 
printf  " Enter DB username: "
read dbuser


mysqladmin -u $dbuser -p drop $dbname


printf "<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>" 
mysql --login-path=local  -e "show databases;"

