

USE coffee_store;

SELECT * FROM customers;
SELECT * from products;

-- Exercise 1
-- From the customers table, select the first name and phone number of all the females who have a last name of Bluth
SELECT first_name, phone_number 
FROM customers
WHERE gender = 'F' AND last_name = 'Bluth';

-- Exercise 2
-- From the products table, select the name for all products that have a price greater than 3.00, or a coffee origin of Sri Lanka
SELECT name
FROM products
WHERE price > 3.00 OR coffee_origin = 'Sri Lanka';

-- Exercise 3
-- How many male customers don't have a phone numver entered in the customers table
-- SELECT COUNT(*)
SELECT *
FROM customers
WHERE phone_number is null AND gender = 'M';