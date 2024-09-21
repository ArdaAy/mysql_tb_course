USE cinema_booking_system;
 
SELECT * FROM films;

SELECT avg(length_min) FROM films;

SELECT avg(length_min) FROM films WHERE length_min > 120;