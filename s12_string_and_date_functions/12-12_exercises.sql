
-- Exercise 1
-- Select the film ID and start time from the screenings table for the date of 18th june 2022

SELECT film_id from screenings
WHERE date(start_time) = '2022-06-18';

-- Exercise 2
-- select all the data from the screenings table where the start time is between the 6th and 13th of March 2023

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-03-06' AND '2023-03-13';

-- Exercise 03
-- Select all data from the screenings table for October 2022

SELECT * from screenings
WHERE year(start_time) = '2022' AND month(start_time) = '10';