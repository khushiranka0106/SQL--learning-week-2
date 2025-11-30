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

USE supermart_db;

-- Insert suppliers
INSERT INTO supplier VALUES
(1, 'Fresh Farms Ltd', '9876543210', 'Jaipur'),
(2, 'DailyGoods Traders', '9765432109', 'Delhi'),
(3, 'Quality Foods', '9898989898', 'Mumbai'),
(4, 'Healthy Choice Pvt Ltd', '9123456780', 'Kolkata'),
(5, 'Veggie Mart', '9801234567', 'Chennai'),
(6, 'City Super Suppliers', '9876012345', 'Ahmedabad'),
(7, 'Organic World', '9823456710', 'Pune'),
(8, 'Pure Dairy Hub', '9812345678', 'Jaipur'),
(9, 'Fresh Fruits Co', '9998765432', 'Hyderabad'),
(10,'Household Essentials', '9755554433', 'Bangalore');

-- Insert items
INSERT INTO items VALUES
(101, 'Milk Packet', 28.00, '1 Litre', 'Dairy', 8),
(102, 'Bread', 35.00, '1 Pack', 'Bakery', 2),
(103, 'Rice', 55.00, '1 Kg', 'Grocery', 3),
(104, 'Sugar', 40.00, '1 Kg', 'Grocery', 3),
(105, 'Eggs', 65.00, '12 pcs', 'Poultry', 5),
(106, 'Apple', 120.00, '1 Kg', 'Fruits', 9),
(107, 'Banana', 50.00, '1 Dozen', 'Fruits', 9),
(108, 'Soap', 35.00, '1 Pc', 'Personal Care', 10),
(109, 'Shampoo', 120.00, '100 ml', 'Personal Care', 10),
(110, 'Potato', 25.00, '1 Kg', 'Vegetables', 1);

-- Item + Supplier
SELECT i.item_name, s.supplier_name
FROM items i
INNER JOIN supplier s ON i.supplier_id = s.supplier_id;

-- Suppliers from Hyderabad
SELECT i.item_name, s.supplier_name, s.city
FROM items i
INNER JOIN supplier s ON i.supplier_id = s.supplier_id
WHERE s.city = 'Hyderabad';

-- Supplier with items (LEFT JOIN)
SELECT s.supplier_name, i.item_name
FROM supplier s
LEFT JOIN items i ON s.supplier_id = i.supplier_id;

-- Supplier city contains 'a' (RIGHT JOIN)
SELECT i.item_name, s.supplier_name, s.city
FROM items i
RIGHT JOIN supplier s ON i.supplier_id = s.supplier_id
WHERE s.city LIKE '%a%';

