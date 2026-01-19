-- Create user related dbos
-- Tables
source ./tables/create_roles.sql
source ./tables/create_users.sql
-- Views
source ./views/create_users_vw.sql

-- Create flight log related dbos
-- Tables
source ./tables/create_flight_logs.sql
source ./tables/create_missions.sql
source ./tables/create_aircrews.sql
source ./tables/create_flight_log_comments.sql
-- Views
source ./views/create_flight_logs_vw.sql
