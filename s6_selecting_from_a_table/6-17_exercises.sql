USE coffee_store;

-- Exercise 1
-- From the customers table, select all the distinct last names, and order them alphabetically (from A to Z)

SELECT * FROM customers;

SELECT DISTINCT last_name
FROM customers
ORDER BY last_name;

-- Exercise 2
-- Select the first 4 orders placed for the product with ID 3, in February 2023

SELECT * FROM orders;

SELECT *
FROM orders
WHERE product_id = 3 AND order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59:999999'
ORDER BY order_time
LIMIT 4;

-- Exercise 3
-- Select the name, price and coffee origin from the products table, 
-- but rename the price column to retail price in the result set

SELECT * FROM products;

SELECT name, price AS retail_price, coffee_origin
FROM products