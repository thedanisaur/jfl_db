mysql -u root jfl < ./db_destroy.sql
mysql -u root -e "CREATE SCHEMA jfl CHARACTER SET utf8 COLLATE utf8_bin ;"
mysql -u root jfl < ./db_build.sql
mysql -u root jfl < ./db_populate.sql