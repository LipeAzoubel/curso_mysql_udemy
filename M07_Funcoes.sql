-- Maior, menor e média
SELECT 
	MAX(amount) AS Maior,
    MIN(amount) AS Menor,
    AVG(amount) AS Média
FROM payment;

-- Count e sum
SELECT
	SUM(amount) AS 'Total de Vendas',
    COUNT(amount) AS 'Número de Vendas'
FROM payment 
WHERE staff_id = 1;

-- Agrupando os Clientes
SELECT 
	customer_id,
    SUM(amount) AS total
FROM payment
GROUP BY customer_id
ORDER BY total DESC;

-- Ordenando os Clientes
SELECT 
	cus.customer_id,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
ORDER BY total DESC;

-- Filtrando Valores com HAVING
SELECT 
	cus.customer_id,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total,
    COUNT(amount) AS Compras
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
HAVING Total >= 150 AND Compras >= 35
ORDER BY total DESC;