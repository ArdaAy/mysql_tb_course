USE cinema_booking_system;
 
SELECT * FROM reserved_seat;

SELECT booking_id, count(seat_id) AS no_seats
FROM reserved_seat
GROUP BY booking_id;

SELECT avg(no_seats), max(no_seats) FROM
(SELECT booking_id, count(seat_id) AS no_seats
FROM reserved_seat
GROUP BY booking_id) b;