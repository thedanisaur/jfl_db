CREATE TABLE users (
      id BINARY(16) PRIMARY KEY
    , email VARCHAR(255) NOT NULL
    , password_hash VARCHAR(255) NOT NULL
    , first_name VARCHAR(255) NOT NULL
    , last_name VARCHAR(255) NOT NULL
    , call_sign VARCHAR(255) NOT NULL
    , primary_mds VARCHAR(255) NOT NULL
    , secondary_mds VARCHAR(255) NOT NULL
    , ssn_last_4 CHAR(4) NOT NULL CHECK (ssn_last_4 REGEXP '^[0-9]{4}$')
    , flight_auth_code VARCHAR(255) NOT NULL
    , issuing_unit VARCHAR(255) NOT NULL
    , unit_charged VARCHAR(255) NOT NULL
    , harm_location VARCHAR(255) NOT NULL
    , status VARCHAR(255) NOT NULL
    , is_instructor BOOLEAN NOT NULL
    , is_evaluator BOOLEAN NOT NULL
    , created_on DATETIME NOT NULL
    , updated_on DATETIME NOT NULL
    , last_logged_in DATETIME NULL

    , UNIQUE (email)
);

DROP TRIGGER IF EXISTS bi_users;
DELIMITER $$
CREATE TRIGGER bi_users BEFORE INSERT ON users FOR EACH ROW
BEGIN
    IF (NEW.id IS NULL) THEN
        SET NEW.id = UUID_TO_BIN(UUID());
    END IF;
    IF (NEW.is_instructor IS NULL) THEN
        SET NEW.is_instructor = 0;
    END IF;
    IF (NEW.is_evaluator IS NULL) THEN
        SET NEW.is_evaluator = 0;
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
