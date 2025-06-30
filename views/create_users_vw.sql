DROP VIEW IF EXISTS users_vw;

CREATE OR REPLACE VIEW users_vw
AS
    SELECT  u.user_id
        , u.user_email
        , u.user_password
        , u.user_firstname
        , u.user_lastname
        , u.user_callsign
        , u.user_primary_mds
        , u.user_secondary_mds
        , u.user_ssn_last_4
        , u.user_flight_auth_code
        , u.user_issuing_unit
        , u.user_unit_charged
        , u.user_harm_location
        , u.user_status
        , u.user_is_instructor
        , u.user_is_evaluator
        , r.role_displayname
        , u.user_created_on
        , u.user_updated_on
        , u.user_last_logged_in
    FROM    users u
        ,   roles r
    WHERE   u.user_role_id = r.role_id
;
