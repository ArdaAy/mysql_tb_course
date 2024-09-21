USE cinema_booking_system;
 
SELECT date('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT date(start_time) FROM screenings;

SELECT * FROM screenings
WHERE date(start_time) = '2023-07-08';

SELECT * FROM screenings
WHERE start_time = '2023-07-08';

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-07-08' AND '2023-09-09';

SELECT * FROM screenings
WHERE start_time BETWEEN '2023-07-08' AND '2023-09-09 00:00:00';