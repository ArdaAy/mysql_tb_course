USE cinema_booking_system;
 
SELECT month('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT month(start_time) FROM screenings;

SELECT * FROM screenings
WHERE month(start_time) = 8;

SELECT month(start_time), count(*) FROM screenings
GROUP BY month(start_time);

SELECT month(start_time) as month, count(*) FROM screenings
GROUP BY month;