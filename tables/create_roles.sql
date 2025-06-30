CREATE TABLE roles (
      role_id BINARY(16) PRIMARY KEY
    , role_name VARCHAR(255) NOT NULL
    , role_displayname VARCHAR(255) NOT NULL

    , UNIQUE (role_name)
    , UNIQUE (role_displayname)
);
