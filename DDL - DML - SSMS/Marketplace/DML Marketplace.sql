-- DML MARKETPLACE
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO Clientes
VALUES
(1, 'Vitor Silva', 'vitinho34@mail.com', '78579613', 'Rua tabocão, 666', 'Boleto'),
(2, 'Nader Oliveira', 'nadero@mail.com', '58963498', 'Rua das garças, 762', 'Pix'),
(3, 'Renato Silveira', 'silveira.ren@mail.com', '89962159', 'Rua Capitão Moraes, 151', 'Cartão de Crédito'),
(4, 'José Oliveira', 'zemaria@mail.com', '25478963', 'Rua Antonio Chagas, 35', 'Transferência'),
(5, 'Maria Das Dores', 'mariador@mail.com', '45693278', 'Rua das dores, 89', 'Boleto')

INSERT INTO Categorias
VALUES
(1, 'Eletronicos/Suportes/Notebook', 'Pré-Venda'),
(2, 'Eletronicos/Calculadoras', 'Venda'),
(3, 'Cadeiras giratórias/Gamer', 'Encomenda'),
(4, 'Eletronicos/Monitores/LED', 'Pronta entrega'),
(5, 'Escritório/Canetas', 'Pronta entrega')

INSERT INTO Produtos
VALUES
(1, 'Base notebook', 89.90, 15, 1, 2),
(2, 'Calculadora Casio', 58.75, 7, 2, 5),
(3, 'Cadeira Gamer', 999.90, 2, 3, 1),
(4, 'Monitor Gamer', 1299.90, 1, 4, 3),
(5, 'Caneta Crown', 208.78, 3, 5, 4)

INSERT INTO Carrinho
VALUES
(1, '19.90', 'Chegará em 6 dias', 'Boleto', 5, 1),
(2, '79.50', 'Chegará em 8 dias', 'Pix', 4, 2),
(3, '159.99', 'Chegará em 12 dias', 'Cartão de Crédito', 3, 3),
(4, '5.99', 'Chegará em 3 dias', 'Transferência', 2, 4),
(5, '10.99', 'Chegará em 2 dias', 'Boleto', 1, 5)

SELECT * FROM Carrinho
WHERE Pagamento LIKE '%boleto%'

SELECT * FROM Carrinho
WHERE Pagamento LIKE '%pix%'