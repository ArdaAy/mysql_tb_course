USE coffee_store;

-- Exercise 1
-- From the products table, select the name and price of all products with a coffee origin equal to Colombia or Indonesia.
-- Sort the results by name, from A-Z

SELECT * from products;

SELECT name, price
FROM products
WHERE coffee_origin IN ('Colombia','Indonesia')
ORDER BY name;

-- Exercise 2
-- From the orders table, select all the orders in February 2023, 
-- for customers with IDs of 19,20,21 or 24

SELECT * from orders;

SELECT *
FROM orders
WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59:999999' 
AND customer_id IN (19,20,21,24);

-- Exercise 3
-- From the customers table, select the first name and phone number of all customers whose last name contains the pattern 'ar'

SELECT * FROM customers;

SELECT first_name, last_name, phone_number
-- SELECT first_name, phone_number
FROM customers
WHERE last_name LIKE '%ar%';
