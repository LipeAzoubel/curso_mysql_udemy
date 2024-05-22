-- Visualizando a DB de Usuários
USE mysql;
SELECT * FROM user;

-- Também pode ser assim:
SELECT * FROM mysql.user;

-- Criando usuário
CREATE USER ana IDENTIFIED BY '123456';
SELECT * FROM mysql.user;

-- Criando usuário com restrições
CREATE USER joao@localhost IDENTIFIED BY '223344';
SELECT * FROM mysql.user;

CREATE USER maria@empresa.com IDENTIFIED BY '334455';
SELECT * FROM mysql.user;

-- Removendo Usuários
DROP USER maria@mempresa.com;
SELECT * FROM mysql.user;

-- Recuperando a senha de um usuário
SET PASSWORD FOR joao@localhost = '333';

-- Seta senha para usuário atual
SET PASSWORD = '111';

-- Verifica permissões de um usuário
SHOW GRANTS FOR ana;

-- Dá permissões
GRANT SELECT, INSERT, UPDATE, DELETE
ON sakila.*
TO ana;

-- Adicionando um ADMIN
GRANT ALL 
ON sakila.* 
TO ana;

GRANT ALL
ON *.*
to joao@localhost;

-- Removendo privilégios
CREATE USER maria@empresa.com IDENTIFIED BY '334455';

GRANT SELECT, INSERT, UPDATE
ON sakila.*
TO maria@empresa.com;

REVOKE UPDATE
ON sakila.*
FROM maria@empresa.com;