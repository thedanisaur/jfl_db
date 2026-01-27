/* Session */
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'logout', 'read', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'refresh', 'read', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';

/* Users */
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'users', 'create', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'users', 'read', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'users', 'update', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';
INSERT INTO permissions (role_id, resource, operation, effect, cond_type, cond_expr)
SELECT r.id, 'users', 'delete', 'allow', 'cel', 'true' FROM roles r WHERE r.name = 'site_admin';


