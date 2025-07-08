--liquibase formatted sql
--changeset serious_cap:2025-06-16-00-create-posts-table

CREATE TABLE IF NOT EXISTS user_post_storage.posts
(
    id          BIGSERIAL    NOT NULL,
    user_id     BIGINT       NOT NULL,
    title       VARCHAR(128) NOT NULL,
    content     TEXT         NOT NULL,
    is_reserved BOOLEAN      NOT NULL DEFAULT false,

    CONSTRAINT pk_user_post_storage_posts PRIMARY KEY (id),
    CONSTRAINT fk_user_post_storage_posts FOREIGN KEY (user_id) REFERENCES user_post_storage.users (id)
    );

--rollback DROP TABLE IF EXISTS user_post_storage.posts;
