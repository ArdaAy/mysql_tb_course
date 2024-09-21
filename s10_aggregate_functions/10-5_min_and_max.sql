USE cinema_booking_system;
 
SELECT * FROM films;

SELECT max(length_min) FROM films;

SELECT name, max(length_min) FROM films;  # error

SELECT min(length_min) FROM films;