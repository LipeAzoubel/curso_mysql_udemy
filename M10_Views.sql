-- Views

CREATE VIEW vendas_por_cliente AS
SELECT
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id;

SELECT * FROM sakila.vendas_por_cliente WHERE amount >= 9.99;

-- Para modificar, poderíamos fazer o DROP e criar uma nova view
-- Ou poderíamos usar CREATE OR REPLACE

CREATE OR REPLACE VIEW vendas_por_cliente AS
SELECT
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id
ORDER BY pay.amount DESC;
 