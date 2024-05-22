-- Criando database
CREATE DATABASE carros;
USE carros;

-- criando tabela
CREATE TABLE marcas(
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Atualizando colunas
ALTER TABLE marcas ADD origem VARCHAR(255);

-- Criando tabela de inventário
CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);

-- Criando a tabela de clientes
CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserindo dados nas tabelas
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES 
	( 'João', 'dos Santos', 'Rua 2'),
    ( 'Maria', 'Nogueira', 'Rua 3'),
    ( 'Ana', 'Natura', 'Rua 4'),
    ( 'Paula', 'Tejano', 'Rua 5'),
    ( 'Jorge', 'Marlboro', 'Rua Joanete');

INSERT INTO marcas (nome_marca, origem)
VALUES
	('FIAT', 'Itália'),
    ('FORD', 'USA'),
    ('Audi', 'Alemanha'),
    ('Honda', 'Japão'),
    ('KIA', 'Coreia do Sul');

INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES
	('Uno', 'Manual', '1.0', 'Gasolina', 1),
    ('Fiesta', 'Automático', '2.0', 'Flex', 2),
    ('Ká', 'Manual', '1.0', 'Álcool', 2),
    ('A4', 'Automático', '1.8', 'Flex', 3),
    ('Civic', 'Automático', '2.0', 'Flex', 4);

















-- 