-- Client details
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, authorities,
                                  access_token_validity)
VALUES ('client', '{bcrypt}$2a$10$RQZNtMsw97QOfoyDwusem.kIkhazF5veExuXhEHdk5IL0Ww/GQT.K', 'read,write',
        'password,refresh_token,client_credentials', 'ROLE_CLIENT', 300);

-- Creating admin User with password admin and role ADMIN
INSERT INTO users (id, username, password, enabled)
VALUES (1, 'admin', '{bcrypt}$2a$10$nz.TKZ0kZmstLeCzuy.Ix.xjdbnNvnSJ.fl8/RKUiqZo2hx01.26S', 1);
INSERT INTO authorities (username, authority)
VALUES ('admin', 'ROLE_ADMIN');

-- Creating user with password user and role USER
INSERT INTO users (id, username, password, enabled)
VALUES (2, 'user', '{bcrypt}$2a$10$yffvpZsAOpyE.xesvlWrmuGF3Er.JjtrF6E5PfK.3Rz99qizlDACy', 1);
INSERT INTO authorities (username, authority)
VALUES ('user', 'ROLE_USER');
