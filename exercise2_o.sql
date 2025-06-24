CREATE SCHEMA IF NOT EXISTS Store;

SET search_path TO Store;

CREATE TABLE IF NOT EXISTS Customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(50) NOT NULL
);



DROP SCHEMA [IF EXISTS] Store
[ CASCADE | RESTRICT ];


