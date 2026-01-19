# JFL Database

## Setup dev environment

### Start MySQL
#### Mac OSX
```
mysql.server start
```

#### Linux
```
systemctl start mysql
```

### Build the DB
```

mysql -u root -e "CREATE SCHEMA jfl CHARACTER SET utf8 COLLATE utf8_bin;"

mysql -u root jfl < ./db_create.sql

mysql -u root jfl < ./db_populate.sql

```

## Teardown dev environment

```
mysql -u root jfl < ./db_destroy.sql
```

## Teardown and Setup dev environment

```
./db_rebuild.sh
```

## Backup db

```
mysqldump jfl --result-file=dump.sql --user root --password
```

## AWS MySQL Install

centos
```
sudo yum install https://dev.mysql.com/get/mysql80-community-release-el7-5.noarch.rpm
sudo yum install mysql-community-server

sudo systemctl start mysqld.service

USER=root
PASSWORD=
HOST=localhost

sudo grep 'temporary password' /var/log/mysqld.log
mysql -u root -p -e "ALTER USER '$USER'@'$HOST' IDENTIFIED BY '$PASSWORD';" --connect-expired-password
mysql -u root -p -e "CREATE USER '$USER'@'$HOST' IDENTIFIED BY '$PASSWORD';"
mysql -u root -p -e "GRANT create, insert, update, delete, select, show view ON jfl.* TO '$USER'@'$HOST';"
mysql -u root -p -e "FLUSH PRIVILEGES;"
mysql -u root -p -e "SHOW GRANTS FOR '$USER'@'$HOST';"

sudo systemctl restart mysqld.service
```

ubuntu 22.04
```
sudo apt install mysql-server

USER=root
PASSWORD=
HOST=localhost

sudo mysql -u root -p -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$PASSWORD';" --connect-expired-password
sudo mysql -u root -p -e "CREATE USER '$USER'@'$HOST' IDENTIFIED BY '$PASSWORD';"
sudo mysql -u root -p -e "GRANT create, insert, update, delete, select, show view ON jfl.* TO '$USER'@'$HOST';"
sudo mysql -u root -p -e "FLUSH PRIVILEGES;"
sudo mysql -u root -p -e "SHOW GRANTS FOR '$USER'@'$HOST';"

sudo systemctl restart mysqld
```