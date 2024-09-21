SHOW DATABASES;

USE cinema_booking_system;

-- Exersice 1
-- Select the customer ID and count the number of reserved seats, grouped by customer
-- Sort the results by customer ID

SELECT b.customer_id, count(*) from reserved_seat rs
JOIN bookings b ON rs.booking_id = b.id
GROUP BY b.customer_id
ORDER BY b.customer_id;

-- Exercise 2
-- Select the film name, and count the number of screenings, for each film that is over two hours long

SELECT f.name, f.length_min, count(*) FROM films f
JOIN screenings s ON f.id = s.film_id
WHERE f.length_min > 120
GROUP BY f.name;

SELECT f.name, f.length_min, count(*) FROM films f
JOIN screenings s ON f.id = s.film_id
GROUP BY f.name
HAVING f.length_min > 120;

-- Exercise 3
-- Modify the query from question 2, so that it only counts screenings for January 2023

SELECT count(s.id), f.name FROM films f
JOIN screenings s ON f.id = s.film_id
WHERE month(s.start_time) = 1 AND year(s.start_time) = 2023 AND f.length_min > 120
GROUP BY f.name;

SELECT f.name, f.length_min, count(*) FROM films f
JOIN screenings s ON f.id = s.film_id
WHERE month(s.start_time) = 1 AND year(s.start_time) = 2023 
GROUP BY f.name
HAVING f.length_min > 120;

-- Exercise 4
-- Find out how many seats each customer booked, for each screening.
-- Include the customer ID, the screening ID, and the number of seats for each customer for that screening

SELECT b.customer_id, b.screening_id, count(*) from bookings b
JOIN reserved_seat rs ON rs.booking_id = b.id
GROUP BY b.customer_id, b.screening_id
ORDER BY b.customer_id, b.screening_id;
