--liquibase formatted sql
--changeset serious_cap:2025-06-24-01-create-orders-table

CREATE TABLE IF NOT EXISTS user_post_storage.orders
(
    id          BIGSERIAL    NOT NULL,
    user_id     BIGINT       NOT NULL,
    post_id     BIGINT       NOT NULL,
    status      USER_POST_STORAGE.STATUS_ENUM  NOT NULL,

    CONSTRAINT pk_orders PRIMARY KEY (id),
    CONSTRAINT fk_orders_user_id FOREIGN KEY (user_id) REFERENCES user_post_storage.users (id),
    CONSTRAINT fk_orders_post_id FOREIGN KEY (post_id) REFERENCES user_post_storage.posts (id)
);

--rollback DROP TABLE IF EXISTS user_post_storage.orders;
