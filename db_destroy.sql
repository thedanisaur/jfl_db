/* Drop flight log related dbos */
DROP VIEW IF EXISTS flight_logs_vw;

DROP TRIGGER IF EXISTS bi_flight_log_comments;
DROP TRIGGER IF EXISTS bi_aircrews;
DROP TRIGGER IF EXISTS bi_missions;
DROP TRIGGER IF EXISTS bi_flight_logs;

DROP TABLE IF EXISTS flight_log_comments;
DROP TABLE IF EXISTS aircrews;
DROP TABLE IF EXISTS missions;
DROP TABLE IF EXISTS flight_logs;

/* Drop user related dbos */
DROP VIEW IF EXISTS users_vw;

DROP TRIGGER IF EXISTS bi_users;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

/* Drop schema */
DROP SCHEMA jfl;
