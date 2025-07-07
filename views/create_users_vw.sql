DROP VIEW IF EXISTS users_vw;

CREATE OR REPLACE VIEW users_vw
AS
    SELECT  u.id
        , u.email
        , u.password_hash
        , u.firstname
        , u.lastname
        , u.callsign
        , u.primary_mds
        , u.secondary_mds
        , u.ssn_last_4
        , u.flight_auth_code
        , u.issuing_unit
        , u.unit_charged
        , u.harm_location
        , u.status
        , u.is_instructor
        , u.is_evaluator
        , r.displayname
        , u.created_on
        , u.updated_on
        , u.last_logged_in
    FROM    users u
        ,   roles r
    WHERE   u.role_id = r.id
;
