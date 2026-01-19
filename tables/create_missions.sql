CREATE TABLE missions (
      id BINARY(16) PRIMARY KEY
    , flight_log_id BINARY(16) NOT NULL
    , mission_number VARCHAR(255) NULL
    , mission_symbol VARCHAR(255) NOT NULL
    , mission_from VARCHAR(255) NOT NULL
    , mission_to VARCHAR(255) NOT NULL
    , takeoff_time TIME NULL
    , land_time TIME NULL
    , total_time_decimal INT NULL
    , total_time_display VARCHAR(255) NULL
    , touch_and_gos INT NULL
    , full_stops INT NULL
    , total_landings INT NULL
    , sorties INT NULL
    , created_on DATE NOT NULL
    , updated_on DATE NOT NULL

    , CONSTRAINT missions_flight_log_id_fkey FOREIGN KEY (flight_log_id)
        REFERENCES flight_logs (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

DROP TRIGGER IF EXISTS bi_missions;
DELIMITER $$
CREATE TRIGGER bi_missions BEFORE INSERT ON missions FOR EACH ROW
BEGIN
    IF (NEW.id IS NULL) THEN
        SET NEW.id = UUID_TO_BIN(UUID());
    END IF;
    IF (NEW.created_on IS NULL) THEN
        SET NEW.created_on = CURDATE();
    END IF;
    IF (NEW.updated_on IS NULL) THEN
        SET NEW.updated_on = CURDATE();
    END IF;
END;
$$

-- Don't forget to reset the delimiter
DELIMITER ;
