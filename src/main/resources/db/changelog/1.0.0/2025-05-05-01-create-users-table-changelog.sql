--liquibase formatted sql
--changeset serious_cap:2025-05-05-01-create-users-table

CREATE TABLE IF NOT EXISTS user_post_storage.users
(
    id         BIGSERIAL   NOT NULL,
    username   VARCHAR(64) NOT NULL,
    email      VARCHAR(64) NOT NULL,
    created_at TIMESTAMP   NOT NULL DEFAULT now(),

    CONSTRAINT pk_user_post_storage_users PRIMARY KEY (id),
    CONSTRAINT uq_user_post_storage_users_username UNIQUE (username),
    CONSTRAINT uq_user_post_storage_users_email UNIQUE (email)
);

--rollback DROP TABLE IF EXISTS user_post_storage.users;
