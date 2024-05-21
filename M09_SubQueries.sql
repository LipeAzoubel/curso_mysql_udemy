
SELECT * 
FROM payment 
WHERE amount > 5.99;

SELECT AVG(amount)
FROM payment;

-- Pega todos os elementos cujo amount seja maior que a média
SELECT *
FROM payment
WHERE amount > (
	SELECT AVG(amount) 
    FROM payment
);

-- Seleciona todos os pagamentos com valor igual ao máximo do cliente 1
SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount)
    FROM payment
    WHERE customer_id = 1
);

-- Utilizando o IN
SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 35
);

-- Utilizando o ANY
SELECT *
FROM customer
WHERE customer_id = ANY (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 35
);