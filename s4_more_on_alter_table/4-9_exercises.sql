USE test;

SHOW TABLES;

-- Exercise 1
-- Add a primary key to the id field in the pets table

DESCRIBE pets;

ALTER TABLE pets
ADD PRIMARY KEY (id);

-- Exercise 2
-- Check the people table, and add a primary key to the id field if it doesn't already have one.

DESCRIBE people;

ALTER TABLE people
ADD PRIMARY KEY (id);

-- Exercise 3
-- Add a foreign key to the owner_id field of the pets table, referencing the id field in the people table

ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwner
FOREIGN KEY (owner_id)
REFERENCES people(id);

DESCRIBE pets;

-- Exercise 4
-- Add a column named email to the people table

ALTER TABLE people
ADD COLUMN email VARCHAR(30);

-- Exercise 5
-- Add a unique constraint the the email column in the people table

DESCRIBE people;

ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

-- Exercise 6
-- Rename the name column in the pets table to first_name
DESCRIBE pets;

ALTER TABLE pets
RENAME COLUMN name TO first_name;

-- Exercise 7
-- Change the postcode data type to CHAR(7) in the addresses table

DESCRIBE addresses;

ALTER TABLE addresses
MODIFY COLUMN postcode CHAR(7);
-- alternatively
ALTER TABLE addresses
CHANGE COLUMN postcode postcode CHAR(7);