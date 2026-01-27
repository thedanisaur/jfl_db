INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'admin@jfl.com'
WHERE r.name = 'site_admin';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'joker.instructor@jfl.com'
WHERE r.name = 'pilot';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'pilot.test@jfl.com'
WHERE r.name = 'pilot';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'whip@jfl.com'
WHERE r.name = 'pilot';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'swat@jfl.com'
WHERE r.name = 'site_admin';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'zero@jfl.com'
WHERE r.name = 'instructor';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'student@jfl.com'
WHERE r.name = 'student';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'merlin@jfl.com'
WHERE r.name = 'training_officer';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'scheduler@jfl.com'
WHERE r.name = 'scheduler';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'danosaur@jfl.com'
WHERE r.name = 'site_admin';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'longface@jfl.com'
WHERE r.name = 'site_admin';

INSERT INTO roles_users (id, role_id, user_id)
SELECT
    UUID_TO_BIN(UUID())
    , r.id
    , u.id
FROM roles r
JOIN users u ON u.email = 'noelle@jfl.com'
WHERE r.name = 'site_admin';
