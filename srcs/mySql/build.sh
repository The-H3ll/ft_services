#! bin/bash



openrc

touch /run/openrc/softlevel

echo "Install modfication.."
/usr/bin/mysql_install_db


echo "starting mariadb"
rc-service mariadb start

echo "Apllying DataBase"
echo "CREATE DATABASE wordpress;" | mysql -u root

echo "CREATE USER 'molabhai'@'localhost' identified by 'mysql';" | mysql -u root

echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'molabhai'@'localhost';" | mysql -u root

echo "FLUSH PRIVILEGES;" | mysql -u root

mysql -u root -p"\r" < localhost.sql
 

#sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf

/usr/bin/mysqld_safe --datadir="/var/lib/mysql"