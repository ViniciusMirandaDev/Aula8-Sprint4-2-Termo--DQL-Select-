--Para usar o banco selecionado
USE Optus;

--DQL SELECT ALL FROM
SELECT * FROM Artista;
SELECT * FROM Album;
SELECT * FROM Estilo;
SELECT * FROM EstiloAlbum;
SELECT * FROM EstiloArtista;
SELECT * FROM Usuario;

--Insere os dados
INSERT INTO Usuario(Nome, Permissao, Email, Senha) VALUES ('Jasmine','Admin','jasfriz@outlook.com','monkeys432');

--Atualiza um dado espec�fico
UPDATE Artista SET IdAlbum=9
WHERE IdArtista=6;

-- Selcionar um dado espec�fico
SELECT * FROM Artista WHERE 
IdArtista = 4 OR -- ||
IdArtista = 6;

-- Selecionar como uma BUSCA espec�ficas
-- % qualquer coisa
SELECT * FROM Artista WHERE 
Nome LIKE '%Mi%';

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Album WHERE IdAlbum > 6 AND IdAlbum < 9;

-- Ordenar dados de forma crescente (padr�o)
SELECT * FROM Estilo ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Artista ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Album ORDER BY DataLancamento DESC;
 
-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Album WHERE
DataLancamento BETWEEN '2016-08-05T00:00:00' AND '2019-09-05T00:00:00';