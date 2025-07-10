--liquibase formatted sql
--changeset serious_cap:2025-06-24-00-create-status-enum

CREATE TYPE user_post_storage.status_enum AS ENUM ('CREATED', 'FAILED');

--rollback DROP TYPE IF EXISTS user_post_storage.status_enum;
