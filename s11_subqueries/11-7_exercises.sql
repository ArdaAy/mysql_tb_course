
-- Exercise 1
-- Select the film name and length, for all films with a length greater than the average film length.

SELECT AVG(length_min) from films;

SELECT * FROM films
WHERE length_min > (SELECT AVG(length_min) from films);

-- Exercise 2
-- Select the maximum and minumum number of screenings, for our films.
-- We want two values in the result, the maximum number of screenings, and the minumum number.alter

SELECT * from screenings;


SELECT MAX(count), MIN(count)
FROM (
	SELECT count(*) as count 
    from screenings
	GROUP BY film_id 
) t;

-- Exercise Select each film, and the number of screenings for that film

SELECT 
	name,
    (SELECT coun ast(*) FROM screenings s WHERE s.film_id = f.id) as number_of_screenings
 FROM films f;

SELECT f.name, count(*) FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY name;


