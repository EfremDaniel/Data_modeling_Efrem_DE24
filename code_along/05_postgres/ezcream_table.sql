CREATE SCHEMA IF NOT EXISTS ezcream;

SET search_path TO ezcream;

CREATE TABLE IF NOT EXISTS Customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    personal_number CHAR(12),
    email VARCHAR(255) NOT NULL,
    adress VARCHAR(100) NOT NULL

);

CREATE TABLE IF NOT EXISTS Orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date timestamp DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);
SELECT * FROM Customer;

