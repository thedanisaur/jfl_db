INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'admin@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'joker.instructor@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'pilot.test@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'whip@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'swat@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'zero@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'student@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'merlin@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'scheduler@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'danosaur@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'longface@jfl.com'
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
);

INSERT INTO users (id, email, password_hash, first_name, last_name, call_sign, primary_mds, secondary_mds, ssn_last_4, flight_auth_code, issuing_unit, unit_charged, harm_location, status, is_instructor, is_evaluator)
VALUES
(
    UUID_TO_BIN(UUID())
    , 'noelle@jfl.com'
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
);
