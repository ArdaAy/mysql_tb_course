USE cinema_booking_system;
 
SELECT * FROM customers;

SELECT count(*) FROM customers;

SELECT count(last_name) FROM customers;

SELECT count(first_name) FROM customers;

SELECT count(*) FROM customers
WHERE last_name = 'Smith';

SELECT count(*) FROM customers
WHERE first_name IS NULL;