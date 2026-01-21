DROP VIEW IF EXISTS flight_logs_vw;

CREATE OR REPLACE VIEW flight_logs_vw
AS
    SELECT BIN_TO_UUID(fl.id) AS "flight_log_id"
        , BIN_TO_UUID(fl.user_id) AS "user_id"
        , BIN_TO_UUID(fl.unit_id) AS "unit_id"
        , fl.mds
        , fl.flight_log_date
        , fl.serial_number
        , fl.unit_charged
        , fl.harm_location
        , fl.flight_authorization
        , fl.issuing_unit
        , m.mission_symbol
        , m.mission_from
        , m.mission_to
        , m.takeoff_time
        , m.land_time
        , BIN_TO_UUID(a.user_id) AS "aircrew_user_id"
        , a.flying_origin
        , a.flight_auth_code
        , flc.comment
    FROM flight_logs fl
    LEFT JOIN
        missions m ON fl.id = m.flight_log_id
    LEFT JOIN
        aircrews a ON fl.id = a.flight_log_id
    LEFT JOIN
        flight_log_comments flc ON fl.id = flc.flight_log_id
;
