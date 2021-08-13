USE CLINICA_TARDE;
GO

SELECT * FROM CONSULTA
SELECT * FROM PET
SELECT * FROM Dono
SELECT * FROM RACA
SELECT * FROM TIPO_PET
SELECT * FROM VETERINARIO
SELECT * FROM EMPRESA_CLINICA

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)

SELECT Nome,CRMV, NomeClinica FROM VETERINARIO
LEFT JOIN CLINICA
ON CLINICA.IdClinica = VETERINARIO.IdClinica
WHERE VETERINARIO.IdClinica = 1


-- Listar todas as raças que começam com a letra S

      SELECT * FROM RACA   
	  WHERE Raca_do_Pet LIKE 'S%';


-- Listar todos os tipos de pet que terminam com a letra O

      SELECT * FROM TIPO_PET   
	  WHERE Tipo_do_Pet LIKE '%O';



-- Listar todos os pets mostrando os nomes dos seus donos

SELECT IdPet, NomePet,NascimentoPet, NomeDono FROM PET
LEFT JOIN Dono
ON Dono.IdDono = PET.IdDono


-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido,
--o nome do dono do pet e o nome da clínica onde o pet foi atendido

SELECT IdAtendimento,NomeVeterinario,NomePet,NomeRaca, NomeTipo,NomeDono,NomeClinica  FROM ATENDIMENTO
LEFT JOIN VETERINARIO
ON ATENDIMENTO.IdVeterinario = VETERINARIO.IdVeterinario
INNER JOIN PET
ON ATENDIMENTO.IdPet = pet.IdPet
INNER JOIN RACA
ON PET.IdRaca = RACA.IdRaca
INNER JOIN TIPO
ON RACA.IdTipo = TIPO.IdTipo
INNER JOIN dono
ON PET.IdDono = Dono.IdDono
LEFT JOIN CLINICA
ON veterinario.IdClinica = clinica.IdClinica




