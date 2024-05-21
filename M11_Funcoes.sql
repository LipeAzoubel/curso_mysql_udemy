-- Removendo Espaços
SELECT TRIM('     CARROS                ');
SELECT LTRIM('     CARROS                ');
SELECT RTRIM('     CARROS                ');
SELECT TRIM(LEADING 'a' FROM ('aaaCarrosaaa')); -- remove do início
SELECT TRIM(TRAILING 'a' FROM ('aaaCarrosaaa')); -- remove do final
SELECT TRIM(BOTH 'a' FROM ('aaaCarrosaaa')); -- remove dos dois lados

-- Localizando uma letra na string
SELECT LOCATE('o', 'Carros');

-- Maiúsculas/Minúsculas
SELECT ucase('Carros');
SELECT lcase('Carros');

-- Mostra tamanho
SELECT length('Carros');

-- Repete Palavra
SELECT repeat('Carros', 4);

-- Mostra as x primeiras ou últimas letras
SELECT LEFT('Carros', 3);
SELECT RIGHT('Carros', 4);

