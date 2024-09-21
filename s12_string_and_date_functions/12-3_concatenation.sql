USE cinema_booking_system;
 
-- CONCATENATE
 
-- SELECT concat(column1, column2) AS new_column_name FROM table;

SELECT concat(first_name, last_name) as full_name FROM customers;

SELECT concat(first_name, " ", last_name) as full_name FROM customers;

SELECT concat(first_name, " ", last_name, " ", email) as full_name FROM customers;

SELECT concat("This is ", first_name, " ", last_name, "'s email address ", email) as customer_email FROM customers;

SELECT concat(first_name, last_name) FROM customers;