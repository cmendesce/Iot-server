CREATE SEQUENCE application_user_id_seq START 1;
CREATE TABLE application_user (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('application_user_id_seq'::regclass),
    email CHAR(250) NOT NULL
);

CREATE SEQUENCE mobile_id_seq START 1;
CREATE TABLE mobile (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('mobile_id_seq'::regclass),
    token CHAR(250) NOT NULL,
    owner_id INT NOT NULL REFERENCES application_user (id)
);

CREATE SEQUENCE thing_id_seq START 1;
CREATE TABLE thing (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('thing_id_seq'::regclass),
    name CHAR(250) NOT NULL,
    type INT NOT NULL,
    owner_id INT NOT NULL REFERENCES application_user (id)
);
