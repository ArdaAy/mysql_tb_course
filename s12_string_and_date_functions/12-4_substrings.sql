USE cinema_booking_system;
 
-- Substring
 
SELECT substring("Example", 3, 3) AS Sub;

SELECT substring("Example", 3, 4) AS Sub;
 
--     substring(string, start, length)

SELECT * FROM films;

SELECT substring(name, 1, 4) AS short_name FROM films;

SELECT substring(name, 5, 6) AS short_name FROM films;

SELECT substring(name, -2, 2) AS short_name FROM films;

SELECT substring(name, -6, 5) AS short_name FROM films;