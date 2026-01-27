CREATE TABLE roles_users (
      id BINARY(16) PRIMARY KEY
    , role_id BINARY(16) NOT NULL
    , user_id BINARY(16) NOT NULL
    , created_on DATETIME NOT NULL
    , updated_on DATETIME NOT NULL
);

DROP TRIGGER IF EXISTS bi_roles_users;
DELIMITER $$
CREATE TRIGGER bi_roles_users BEFORE INSERT ON roles_users FOR EACH ROW
BEGIN
    IF (NEW.id IS NULL) THEN
        SET NEW.id = UUID_TO_BIN(UUID());
    END IF;
    IF (NEW.created_on IS NULL) THEN
        SET NEW.created_on = UTC_TIMESTAMP();
    END IF;
    IF (NEW.updated_on IS NULL) THEN
        SET NEW.updated_on = UTC_TIMESTAMP();
    END IF;
END;
$$

-- Don't forget to reset the delimiter
DELIMITER ;