-- Inserindo uma linha
INSERT INTO language
VALUES (DEFAULT, 'Portuguese', '2006-02-15 05:05:05');

-- Inserindo múltiplas linhas
INSERT INTO language
VALUES 
	(DEFAULT, 'Russian', '2006-02-15 05:05:05'),
  (DEFAULT, 'Spanish', '2006-02-15 05:05:05'),
  (DEFAULT, 'Polish', '2006-02-15 05:05:05');

-- Inserindo em múltiplas tabelas
INSERT INTO country
VALUES
	(DEFAULT, 'Filipegrado', '1992-07-22 14:00:00');
    
INSERT INTO city
VALUES
	(DEFAULT, 'Recife', last_insert_id(), '2024-07-22 14:00:00');
    
-- Copiar uma tabela completa
CREATE TABLE payment_backup AS
SELECT * FROM payment;

-- Remover uma tabela
	-- O DROP table remove os dados e a tabela
	-- O Truncate remove apenas os dados
    
-- Atualizando um valor
UPDATE payment
	SET amount = 15.99
	WHERE payment_id = 1;
    
-- Deletando um valor
DELETE FROM payment
WHERE payment_id = last_insert_id();