CREATE DATABASE IF NOT EXISTS supermart_db;
USE supermart_db;

-- Create IF NOT EXISTS supplier table
CREATE TABLE IF NOT exists supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    contact_number VARCHAR(15),
    city VARCHAR(30)
);

-- Create items table
CREATE TABLE items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    price DECIMAL(10,2),
    unit VARCHAR(20),
    category VARCHAR(30),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);
