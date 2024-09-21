USE coffee_store;
 
/*
%  match any number of characters.
 
_  match just one character.
*/
 
SELECT * FROM customers
WHERE last_name LIKE 'W%';

SELECT * FROM customers
WHERE last_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM customers
WHERE first_name LIKE '_o__';

SELECT * FROM products;

SELECT * FROM products
WHERE price LIKE '3%';