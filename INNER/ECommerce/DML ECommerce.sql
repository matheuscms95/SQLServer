-- DML ECOMMERCE
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO Carrinhos
VALUES
(1, '19.90', 'Chegará em 6 dias', 'Boleto', 5, 1),
(2, '79.50', 'Chegará em 8 dias', 'Pix', 4, 2),
(3, '159.99', 'Chegará em 12 dias', 'Cartão de Crédito', 3, 3),
(4, '5.99', 'Chegará em 3 dias', 'Transferência', 2, 4),
(5, '10.99', 'Chegará em 2 dias', 'Boleto', 1, 5)

INSERT INTO Categorias
VALUES
(1, 'Produto em separação', 'No estoque', 1),
(2, 'Centro de distribuição', 'Preparando para entrega', 2),
(3, 'Pronto para retirada', 'Aguardando retirada', 3),
(4, 'Em fiscalização', 'Pague o imposto', 4),
(5, 'Mercadoria em fluxo', 'Transferindo de depósitos', 5)

INSERT INTO Clientes
VALUES
(1, 'Vitor Silva', 'vitinho34@mail.com', '78579613', 'Rua tabocão, 666', 'Boleto'),
(2, 'Nader Oliveira', 'nadero@mail.com', '58963498', 'Rua das garças, 762', 'Pix'),
(3, 'Renato Silveira', 'silveira.ren@mail.com', '89962159', 'Rua Capitão Moraes, 151', 'Cartão de Crédito'),
(4, 'José Oliveira', 'zemaria@mail.com', '25478963', 'Rua Antonio Chagas, 35', 'Transferência'),
(5, 'Maria Das Dores', 'mariador@mail.com', '45693278', 'Rua das dores, 89', 'Boleto')

INSERT INTO Produtos
VALUES
(1, 'Base notebook', 89.90, 15),
(2, 'Calculadora Casio', 58.75, 7),
(3, 'Cadeira Gamer', 999.90, 2),
(4, 'Monitor Gamer', 1299.90, 1),
(5, 'Caneta Crown', 208.78, 3)

SELECT * FROM Produtos
WHERE Preco BETWEEN 20 AND 100

SELECT Clientes.Nome AS Nome, COUNT(*) AS 'Quantidade de Produtos', Carrinhos.Resumo
FROM Clientes
INNER JOIN Carrinhos ON Clientes.Id = Carrinhos.FK_Cliente
GROUP BY Clientes.Nome, Carrinhos.Resumo

SELECT SUM(Produtos.Estoque) AS 'Total estoque'
FROM Produtos
