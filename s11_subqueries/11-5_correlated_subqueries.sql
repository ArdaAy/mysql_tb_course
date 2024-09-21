USE cinema_booking_system;
 
SELECT screening_id, customer_id
FROM bookings
ORDER BY screening_id;
 
SELECT screening_id, customer_id,
(SELECT count(*)
FROM reserved_seat WHERE booking_id = b.id)
FROM bookings b
ORDER BY screening_id;

SELECT count(*)
FROM reserved_seat WHERE booking_id = b.id;