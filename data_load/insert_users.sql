INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'admin@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Site'
    , 'Admin'
    , 'JokerOne'
    , 'ALL'
    , 'F-16CM'
    , '0000'
    , 'ADMIN000'
    , 'JFL_HQ'
    , 'JFL_ADMIN'
    , 'CONTROL_TOWER'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'site_admin';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'joker.instructor@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Joker'
    , 'Instructor'
    , 'JokerIP'
    , 'F-16CM'
    , ''
    , '1111'
    , 'JOKER001'
    , 'VF-1'
    , 'VF-1_OPS'
    , 'READY_ROOM'
    , 'approved'
    , 1
    , 0
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'pilot';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'pilot.test@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Test'
    , 'Pilot'
    , 'Rookie'
    , 'F-18E'
    , 'T-38C'
    , '2222'
    , 'PILOT002'
    , 'VFA-101'
    , 'VFA-101_OPS'
    , 'BRIEF_ROOM'
    , 'approved'
    , 0
    , 0
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'pilot';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'whip@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'WHIP'
    , 'Pilot'
    , 'WHIP'
    , 'F-16CM'
    , ''
    , '3333'
    , 'WHIP001'
    , 'VF-1'
    , 'VF-1_OPS'
    , 'READY_ROOM'
    , 'approved'
    , 1
    , 0
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'pilot';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'swat@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'SWAT'
    , 'Admin'
    , 'SWAT'
    , 'ALL'
    , ''
    , '4444'
    , 'SWAT001'
    , 'JFL_HQ'
    , 'JFL_ADMIN'
    , 'CONTROL_TOWER'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'site_admin';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'zero@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'ZERO'
    , 'Instructor'
    , 'ZERO'
    , 'F-18F'
    , 'F-35A'
    , '5555'
    , 'ZERO001'
    , 'VFA-102'
    , 'VFA-102_OPS'
    , 'BRIEF_ROOM'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'instructor';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'student@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Student'
    , 'Pilot'
    , 'Student'
    , 'T-6A'
    , ''
    , '6666'
    , 'STUD001'
    , 'VT-1'
    , 'VT-1_OPS'
    , 'TRAINING_ROOM'
    , 'approved'
    , 0
    , 0
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'student';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'merlin@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'MERLIN'
    , 'Officer'
    , 'MERLIN'
    , 'F-35A'
    , 'F-22A'
    , '7777'
    , 'MERLIN01'
    , 'VF-31'
    , 'VF-31_OPS'
    , 'TRAINING_OFFICE'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'training_officer';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'scheduler@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Schedule'
    , 'Manager'
    , 'Scheduler'
    , 'ADMIN'
    , ''
    , '8888'
    , 'SCHED001'
    , 'OPS_CENTER'
    , 'OPS_ADMIN'
    , 'SCHEDULING_OFFICE'
    , 'approved'
    , 0
    , 0
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'scheduler';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'danosaur@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Danosaur'
    , 'Admin'
    , 'Danosaur'
    , 'ALL'
    , ''
    , '9999'
    , 'DANO001'
    , 'JFL_HQ'
    , 'JFL_ADMIN'
    , 'CONTROL_TOWER'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'site_admin';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'longface@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'LongFace'
    , 'Admin'
    , 'LongFace'
    , 'ALL'
    , ''
    , '1010'
    , 'LONG001'
    , 'JFL_HQ'
    , 'JFL_ADMIN'
    , 'CONTROL_TOWER'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'site_admin';

INSERT INTO users (user_id, user_email, user_password, user_firstname, user_lastname, user_callsign, user_primary_mds, user_secondary_mds, user_ssn_last_4, user_flight_auth_code, user_issuing_unit, user_unit_charged, user_harm_location, user_status, user_is_instructor, user_is_evaluator, user_role_id, user_role_requested_id)
SELECT
    UUID_TO_BIN(UUID())
    , 'noelle@jokerflightlog.com'
    , '$2a$12$6LM/qJPH8r5J6W5Xd0.A.eUqOpS3zcd8zUlh.43iGGpw1AwYMvQ4u'
    , 'Noelle'
    , 'Admin'
    , 'Noelle'
    , 'ALL'
    , ''
    , '1111'
    , 'NOEL001'
    , 'JFL_HQ'
    , 'JFL_ADMIN'
    , 'CONTROL_TOWER'
    , 'approved'
    , 1
    , 1
    , r.role_id
    , r.role_id
FROM roles r WHERE role_name = 'site_admin';
