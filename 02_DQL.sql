/* DQL - Data Query Language */
USE ClinicaVet
-- Selecionar todos os dados da tabela
SELECT * FROM Veterinario;
SELECT * FROM Dono;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Pet;
SELECT * FROM Atendimento;
--INSERT - Inserir dados

INSERT INTO Veterinario(Nome, CRV) VALUES ('Joana', '14867');
INSERT INTO Dono(Nome) VALUES('Gato');
INSERT INTO TipoPet(Descricao) VALUES('Papagaio');
INSERT INTO Raca(Descricao,IdTipoPet) VALUES('Papagaio-galego', 4);
INSERT INTO Pet(Nome, DataNascimento,IdRaca,IdDono) VALUES('Louro', '2018-05-06T23:59:59',5,4);
INSERT INTO Atendimento(Descricao, DataAtendimento,IdPet,IdVeterinario) VALUES('Problema de respiração e corte nas asas', '2020-06-06T10:40:59',5,6);

--UPDATE Alterar dados
UPDATE Dono SET Nome = 'Gabriel' WHERE IdDono=4;
DELETE FROM Veterinario WHERE IdVeterinario=4;	

-- Selcionar um dado específico
SELECT * FROM Atendimento WHERE 
	IdAtendimento = 3 OR -- ||
	IdAtendimento = 5;

-- Selecionar como uma BUSCA específicas
-- % qualquer coisa
SELECT * FROM TipoPet WHERE 
	Descricao LIKE '%Cho%';

-- Selecionar dados com algumas condições especiais
SELECT * FROM Pet WHERE IdPet > 2 AND IdPet < 6;


-- Ordenar dados de forma crescente (padrão)
SELECT * FROM Raca ORDER BY Descricao;

-- Ordenar dados de forma crescente
SELECT * FROM Raca ORDER BY Descricao ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Raca ORDER BY Descricao DESC;

-- Selecionar dados ENTRE valores específicos
SELECT * FROM Atendimento WHERE
DataAtendimento BETWEEN '2010-05-07T10:40:59' AND '2020-05-07T10:40:59';