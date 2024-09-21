USE cinema_booking_system;
  
SELECT * FROM bookings;
 
SELECT customer_id, screening_id, count(*) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;

SELECT customer_id, screening_id, count(*) FROM bookings
JOIN screenings on bookings.screening_id = screenings.id
WHERE year(screenings.start_time) = 2022
GROUP BY customer_id, screening_id
HAVING customer_id = 10;

SELECT b.customer_id, s.* FROM bookings b
JOIN screenings s ON b.screening_id = s.id
WHERE b.customer_id = 10;