#!/bin/bash
 
printf "\n-----------------------\n"
printf "Sript: drop database"
printf "\n-----------------------\n"

#mysql_config_editor set --login-path=local --host=localhost --user=username --password
mysql --login-path=local  -e "show databases;"

printf "\n<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>\n"

printf  "\n Enter database name what you want to delete: \n"
read dbname 
printf  "\n Enter DB username: \n"
read dbuser


mysqladmin -u $dbuser -p drop $dbname


printf "<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>" 
mysql --login-path=local  -e "show databases;"

