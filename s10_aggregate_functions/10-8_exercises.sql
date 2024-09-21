
-- Exercise 1
-- How many bookings did the customer with ID 10 make, in total

SELECT count(*) FROM bookings WHERE customer_id = 10;

-- Exercise 2
-- Count the number of screenings for Blade Runner 2049 in October 2022

SELECT count(*) FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE f.id = 1 AND start_time BETWEEN '2022-10-01 00:00:00.000000' AND '2022-10-31 23:59:59.999999';

SELECT count(*) FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE f.id = 1 AND month(s.start_time) = 10 AND year(s.start_time) = 2022;

-- Exercise 3
-- Count the number of unique customers who made a booking for April 2023

SELECT count( DISTINCT b.customer_id) from bookings b
JOIN screenings s ON b.screening_id = s.id
WHERE s.start_time BETWEEN '2023-04-01 00:00:00.000000' AND '2023-04-30 23:59:59.999999';

SELECT count( distinct(b.customer_id)) from bookings b
JOIN screenings s ON b.screening_id = s.id
WHERE s.start_time BETWEEN '2023-04-01 00:00:00.000000' AND '2023-04-30 23:59:59.999999';