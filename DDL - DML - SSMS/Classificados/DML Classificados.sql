-- DML CLASSIFICADOS
-- INSERT
-- SELECT
-- UPDADE
-- DELETE

INSERT INTO Classificados
VALUES
(1, 'Calculadora Científica', 'Calculadora nova e com garantia', 39.90, '11 97854-6652', 1),
(2, 'Caderno', '200 folhas - 10 matérias', 19.90, '11 97854-6652', 1),
(3, 'Mouse sem fio', 'Semi-novo, pouco usado', 49.90, '12 95564-9986', 2),
(4, 'Fone', 'Novo na caixa, sem uso', 39.90, '12 95564-9986', 2),
(5, 'Suporte notebook', 'Para notebooks de até 15.6"', 59.90, '11 99999-6686', 3)

INSERT INTO Clientes
VALUES
(1, 'Matheus Santos', 'Rua Diogo Vaz', 'matheus@globo.com', '659874'),
(2, 'Tamara Nogueira', 'Rua da Saúde', 'tamara@globo.com', '458720'),
(3, 'Juliana Martinez', 'Rua Rafael', 'juliana@globo.com', '278963')

SELECT * FROM Classificados
WHERE Descricao LIKE '%nov%'

SELECT * FROM Clientes
WHERE Email LIKE '%globo%'