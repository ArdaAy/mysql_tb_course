-- HOW TO ADD AND REMOVE COLUMNS FROM A TABLE
 
USE coffee_store;

DESCRIBE products;

ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

ALTER TABLE products
DROP COLUMN coffee_origin;