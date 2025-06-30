CREATE TABLE users (
      user_id BINARY(16) PRIMARY KEY
    , user_email VARCHAR(255) NOT NULL
    , user_password VARCHAR(255) NOT NULL
    , user_firstname VARCHAR(255) NOT NULL
    , user_lastname VARCHAR(255) NOT NULL
    , user_callsign VARCHAR(255) NOT NULL
    , user_primary_mds VARCHAR(255) NOT NULL
    , user_secondary_mds VARCHAR(255) NOT NULL
    , user_ssn_last_4 CHAR(4) NOT NULL CHECK (user_ssn_last_4 REGEXP '^[0-9]{4}$')
    , user_flight_auth_code VARCHAR(255) NOT NULL
    , user_issuing_unit VARCHAR(255) NOT NULL
    , user_unit_charged VARCHAR(255) NOT NULL
    , user_harm_location VARCHAR(255) NOT NULL
    , user_status VARCHAR(255) NOT NULL
    , user_is_instructor BIT
    , user_is_evaluator BIT
    , user_role_id BINARY(16) NOT NULL
    , user_role_requested_id BINARY(16) NULL
    , user_created_on DATE NOT NULL
    , user_updated_on DATE NOT NULL
    , user_last_logged_in DATE NOT NULL

    , UNIQUE (user_email)

    , CONSTRAINT user_role_id_fkey FOREIGN KEY (user_role_id)
        REFERENCES roles (role_id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION

    , CONSTRAINT user_role_requested_id_fkey FOREIGN KEY (user_role_requested_id)
        REFERENCES roles (role_id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

DROP TRIGGER IF EXISTS bi_users;
DELIMITER $$
CREATE TRIGGER bi_users BEFORE INSERT ON users FOR EACH ROW
BEGIN
    IF (NEW.user_id IS NULL) THEN
        SET NEW.user_id = UUID_TO_BIN(UUID());
    END IF;
    IF (NEW.user_created_on IS NULL) THEN
        SET NEW.user_created_on = CURDATE();
    END IF;
    IF (NEW.user_updated_on IS NULL) THEN
        SET NEW.user_updated_on = CURDATE();
    END IF;
    IF (NEW.user_last_logged_in IS NULL) THEN
        SET NEW.user_last_logged_in = CURDATE();
    END IF;
END;
$$
