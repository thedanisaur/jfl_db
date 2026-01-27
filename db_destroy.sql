/* Drop user related dbos */
DROP VIEW IF EXISTS users_vw;

DROP TRIGGER IF EXISTS bi_roles_users;
DROP TRIGGER IF EXISTS bi_users;
DROP TRIGGER IF EXISTS bi_permissions;

DROP TABLE IF EXISTS roles_users;
DROP TABLE IF EXISTS users;

DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS roles;

/* Drop schema */
DROP SCHEMA jfl_user_service;
