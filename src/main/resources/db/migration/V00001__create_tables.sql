DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS user_roles;

CREATE TABLE users (
    id bigint auto_increment primary key,
    created_at datetime not null,
    updated_at datetime not null,
    email varchar(40) null,
    name varchar(40) null,
    password varchar(100) null,
    username varchar(15) null,
    constraint UK6dotkott2kjsp8vw4d0m25fb7
        unique (email),
    constraint UKr43af9ap4edm43mmtq01oddj6
        unique (username)
);

CREATE TABLE roles (
    id bigint auto_increment primary key,
    name varchar(60) null,
    constraint UK_nb4h0p6txrmfc0xbrd1kglp9t
        unique (name)
);

CREATE TABLE user_roles (
    user_id bigint not null,
    role_id bigint not null,
    primary key (user_id, role_id),
    constraint FKh8ciramu9cc9q3qcqiv4ue8a6
        foreign key (role_id) references roles (id),
    constraint FKhfh9dx7w3ubf1co1vdev94g3f
        foreign key (user_id) references users (id)
);

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');