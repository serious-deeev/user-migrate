--liquibase formatted sql
--changeset serious_cap:2025-05-05-00-create-user_post_schema

CREATE SCHEMA IF NOT EXISTS user_post_storage;

--rollback DROP SCHEMA IF EXISTS user_post_storage;
