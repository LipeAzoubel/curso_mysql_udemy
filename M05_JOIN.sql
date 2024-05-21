-- Inner Join
SELECT * 
FROM customer
JOIN payment 
ON customer.customer_id = payment.payment_id;

-- Filtrando com Join
SELECT 
	customer.customer_id, 
    customer.first_name, 
    customer.last_name,
    payment.rental_id,
    payment.amount
FROM customer
JOIN payment 
ON customer.customer_id = payment.payment_id;

-- Adicionando um Alias
SELECT 
  cus.customer_id, 
  cus.first_name, 
  cus.last_name,
  pay.rental_id,
  pay.amount
FROM customer cus
JOIN payment pay
ON cus.customer_id = pay.payment_id;

-- Múltiplas Tabelas
SELECT 
	cus.customer_id, 
  cus.first_name, 
  cus.last_name,
  pay.rental_id,
  pay.amount,
  adr.address
FROM customer cus
JOIN payment pay ON cus.customer_id = pay.payment_id
JOIN address adr ON cus.customer_id = adr.address_id;