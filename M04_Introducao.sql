USE sakila;

SELECT actor_id, first_name FROM actor;
SELECT * FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
ORDER BY first_name ASC;

SELECT actor_id, first_name, last_name
FROM actor
ORDER BY last_name DESC;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id > 99 and actor_id <= 200
ORDER BY actor_id DESC;
-- Isso é um comentário

SELECT 
	customer_id, 
    amount,
    amount - (amount * 0.10) AS '10% desconto'
FROM payment AS P
WHERE customer_id = 1;

SELECT * FROM payment WHERE amount >= 0.99 ORDER BY amount DESC;

SELECT * FROM payment WHERE amount = 11.99;
SELECT * FROM payment WHERE amount != 11.99;

SELECT * FROM address
WHERE district = 'California';

-- 24. AND, OR, NOT
SELECT * FROM customer WHERE store_id = 1 AND active = 0;
SELECT * FROM payment WHERE staff_id = 1 AND amount = 1.99;
SELECT * FROM payment WHERE staff_id = 1 AND amount = 0.99 AND customer_id < 10;
SELECT * FROM payment WHERE NOT staff_id = 1 AND amount = 0.99 AND customer_id < 10;

-- IN
SELECT * 
FROM address
WHERE district IN ('Alberta', 'California');

-- BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 1.99 AND 3.99;

-- LIKE
SELECT * FROM actor WHERE first_name LIKE 'A%';
SELECT * FROM actor WHERE first_name LIKE 'AL%';
SELECT * FROM actor WHERE first_name LIKE '%A';
SELECT * FROM actor WHERE last_name LIKE 'W%E';

-- IS NULL
SELECT *
FROM address
WHERE address2 IS NULL;

-- LIMIT
SELECT * 
FROM actor
LIMIT 4, 10;

-- REGEXP
SELECT *
FROM actor
WHERE first_name REGEXP '^a|^b';

SELECT *
FROM actor
WHERE first_name REGEXP '[ger]a';

SELECT *
FROM actor
WHERE first_name REGEXP '^[gcr]a';