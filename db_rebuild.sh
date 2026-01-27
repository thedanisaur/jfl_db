mysql -u root jfl_user_service < ./db_destroy.sql
mysql -u root -e "CREATE SCHEMA jfl_user_service CHARACTER SET utf8 COLLATE utf8_bin ;"
mysql -u root jfl_user_service < ./db_create.sql
mysql -u root jfl_user_service < ./db_populate.sql