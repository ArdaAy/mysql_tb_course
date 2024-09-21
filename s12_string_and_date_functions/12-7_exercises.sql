USE cinema_booking_system;
-- Exercise 1
-- Concatenate the film names and lengths from the films table

SELECT concat(name, " - ", length_min) as name_and_length FROM films;

-- Exercise 2
-- Extract the customer's email from the fifth character onwards. 
-- We want the end of their email address, from the 5th character

SELECT substring(email, 5) from customers;

-- Exercise 3
-- Select the customer's first name in lovercase, and their last name in uppercase, 
-- for each customer with the last name of Smith

SELECT lower(last_name) as last_name, upper(first_name) as first_name 
FROM customers
WHERE last_name = "Smith";

-- Exercise 4
-- Select the last three letters of each film name from the films table

SELECT substring(name,-3) as name FROM films;

-- Exercise 5
-- Concatenate the first three latters in the first name, with the first 3 characters from the last name

SELECT concat(substring(first_name,1,3), " ", substring(last_name,1,3)) from customers;