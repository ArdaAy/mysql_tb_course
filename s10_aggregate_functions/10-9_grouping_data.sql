USE cinema_booking_system;
 
SELECT * FROM bookings;

SELECT count(*) FROM bookings;

SELECT customer_id, count(*) FROM bookings
GROUP BY customer_id;

SELECT customer_id, screening_id, count(*) FROM bookings
GROUP BY customer_id, screening_id
ORDER BY customer_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, count(b.id) FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON s.id = b.screening_id
JOIN customers c on b.customer_id = c.id
GROUP BY f.name, c.last_name, c.first_name, s.start_time
ORDER BY s.start_time;