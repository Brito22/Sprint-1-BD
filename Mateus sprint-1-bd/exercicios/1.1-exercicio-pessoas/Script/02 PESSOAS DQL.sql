USE EMPRESA_TARDE
GO

INSERT INTO PESSOA (NomePessoa)
VALUES ('SAULO'),('LUCAS')

SELECT * FROM PESSOA

INSERT INTO TELEFONE (IdPessoa, NumeroTelefone)
VALUES (1,'999'), (1,'888'), (2,'777'), (2,'666')
GO

SELECT * FROM TELEFONE

INSERT INTO EMAIL(IdPessoa,End_Email)
VALUES(1,'s.santos@email.com'), (2,'l.aragao@email.com')
GO

SELECT * FROM EMAIL

INSERT INTO CNH (IdPessoa, Descricao)
VALUES (1,'132')

INSERT INTO CNH (IdPessoa, Descricao)
VALUES (2,'4343')

SELECT * FROM CNH


SELECT * FROM CNH
SELECT * FROM EMAIL
SELECT * FROM TELEFONE
SELECT * FROM PESSOA