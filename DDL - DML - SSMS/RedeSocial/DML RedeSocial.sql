-- DML REDESOCIAL
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

INSERT INTO Usuarios
VALUES
(1, 'matheus@globo.com', '659874', 'Matheus Santos'),
(2, 'tamara@globo.com', '458720', 'Tamara Nogueira'),
(3, 'juliana@globo.com', '278963', 'Juliana Martinez')

INSERT INTO Postagens
VALUES
(1, 'FestaDeAniversário.JPG', 'Aniversário da tia mais linda', 'Chácara do Sossego', 1),
(2, 'RoleAvenidaPaulista.JPG', 'Caminhada com a gata!', 'Avenida Paulista', 1),
(3, null, 'Texto para refletir', 'Tristeza  interna', 2),
(4, 'ViagemPraia.JPG', 'Mais uma viagem sensacional', 'Salvador', 3)

INSERT INTO Grupo
VALUES
(1, 'Amigos para sempre', 3, 4),
(2, 'Colegas trabalho', 2, 3),
(3, 'Próximos', 1, 2)

SELECT * FROM Postagens
WHERE Localizacao LIKE '%cháca%'

SELECT * FROM Postagens
WHERE Localizacao LIKE '%Sal%'