CREATE TABLE sessions (
      id BINARY(16) PRIMARY KEY
    , issued_at DATETIME NOT NULL
    , expiration DATETIME NOT NULL
    , user_id BINARY(16) NOT NULL

    , CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);
