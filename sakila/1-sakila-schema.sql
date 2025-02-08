-- random stuff
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE DATABASE sakila with OWNER postgres;
-- we have to explictly connect to the new database, otherwise it uses the default `postgres` database
\connect sakila;
CREATE SCHEMA sakila_schema;
ALTER SCHEMA public OWNER TO postgres;
ALTER SCHEMA sakila_schema OWNER TO postgres;


CREATE TABLE public.data_table(
    id BIGSERIAL PRIMARY KEY,
    input_data TEXT,
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);


CREATE TABLE sakila_schema.data_table(
    id BIGSERIAL PRIMARY KEY,
    input_data VARCHAR,
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);