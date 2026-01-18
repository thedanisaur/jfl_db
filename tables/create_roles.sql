CREATE TABLE roles (
      id BINARY(16) PRIMARY KEY
    , name VARCHAR(255) NOT NULL
    , displayname VARCHAR(255) NOT NULL

    , UNIQUE (name)
    , UNIQUE (displayname)
);
