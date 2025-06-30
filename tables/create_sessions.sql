CREATE TABLE sessions (
      session_id BINARY(16) PRIMARY KEY
    , session_issued_at DATETIME NOT NULL
    , session_expiration DATETIME NOT NULL
    , session_issued_uuid BINARY(16) NOT NULL
    , session_user_email VARCHAR(255) NOT NULL

    , CONSTRAINT session_user_email_fkey FOREIGN KEY (session_user_email)
        REFERENCES users (user_email) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

DROP TRIGGER IF EXISTS bi_sessions;
CREATE TRIGGER bi_sessions BEFORE INSERT ON sessions FOR EACH ROW
BEGIN
    SET NEW.session_user_email = LOWER(NEW.session_user_email);
    IF (NEW.session_id IS NULL) THEN
        SET NEW.session_id = UUID_TO_BIN(UUID());
    END IF;
END;
