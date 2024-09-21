USE cinema_booking_system;
 
SELECT year('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT year(start_time) FROM screenings;

SELECT * FROM screenings
WHERE year(start_time) = 2023;