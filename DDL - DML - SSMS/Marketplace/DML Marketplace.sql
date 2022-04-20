-- DML MARKETPLACE
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO Clientes
VALUES
(1, 'Vitor Silva', 'vitinho34@mail.com', '78579613', 'Rua taboc�o, 666', 'Boleto'),
(2, 'Nader Oliveira', 'nadero@mail.com', '58963498', 'Rua das gar�as, 762', 'Pix'),
(3, 'Renato Silveira', 'silveira.ren@mail.com', '89962159', 'Rua Capit�o Moraes, 151', 'Cart�o de Cr�dito'),
(4, 'Jos� Oliveira', 'zemaria@mail.com', '25478963', 'Rua Antonio Chagas, 35', 'Transfer�ncia'),
(5, 'Maria Das Dores', 'mariador@mail.com', '45693278', 'Rua das dores, 89', 'Boleto')

INSERT INTO Categorias
VALUES
(1, 'Eletronicos/Suportes/Notebook', 'Pr�-Venda'),
(2, 'Eletronicos/Calculadoras', 'Venda'),
(3, 'Cadeiras girat�rias/Gamer', 'Encomenda'),
(4, 'Eletronicos/Monitores/LED', 'Pronta entrega'),
(5, 'Escrit�rio/Canetas', 'Pronta entrega')

INSERT INTO Produtos
VALUES
(1, 'Base notebook', 89.90, 15, 1, 2),
(2, 'Calculadora Casio', 58.75, 7, 2, 5),
(3, 'Cadeira Gamer', 999.90, 2, 3, 1),
(4, 'Monitor Gamer', 1299.90, 1, 4, 3),
(5, 'Caneta Crown', 208.78, 3, 5, 4)

INSERT INTO Carrinho
VALUES
(1, '19.90', 'Chegar� em 6 dias', 'Boleto', 5, 1),
(2, '79.50', 'Chegar� em 8 dias', 'Pix', 4, 2),
(3, '159.99', 'Chegar� em 12 dias', 'Cart�o de Cr�dito', 3, 3),
(4, '5.99', 'Chegar� em 3 dias', 'Transfer�ncia', 2, 4),
(5, '10.99', 'Chegar� em 2 dias', 'Boleto', 1, 5)

SELECT * FROM Carrinho
WHERE Pagamento LIKE '%boleto%'

SELECT * FROM Carrinho
WHERE Pagamento LIKE '%pix%'