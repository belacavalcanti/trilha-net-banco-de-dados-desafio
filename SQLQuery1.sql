SELECT * FROM ElencoFilme
-- EXERCICIO 1
SELECT Nome,Ano FROM Filmes
-- EXERCICIO 2
SELECT Nome,Ano FROM Filmes
ORDER BY Ano
-- EXERCICIO 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
-- EXERCICIO 4
SELECT Nome, Ano FROM Filmes
WHERE Ano = '1997'
-- EXERCICIO 5
SELECT *
FROM Filmes
WHERE Ano > 2000;
-- EXERCICIO 6
SELECT *
FROM Filmes
WHERE Duracao > 100
ORDER BY Duracao

SELECT *
FROM Filmes
WHERE Duracao < 150
ORDER BY Duracao
-- EXERCICIO 7
SELECT 
    Ano,
    COUNT(*) AS Quantidade,
    AVG(Duracao) AS DuracaoMedia
FROM Filmes
GROUP BY Ano
ORDER BY AVG(Duracao) DESC;
-- EXERCICIO 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'
-- EXERCICIO 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
-- EXERCICIO 10
 SELECT
 Nome, Genero
 FROM Filmes
 INNER JOIN Generos ON Filmes.Id = Generos.Id
 ORDER BY Nome
-- EXERCICIO 11
SELECT
Nome, Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'
-- EXERCICIO 12
 SELECT
 Nome, PrimeiroNome, UltimoNome, Papel
 FROM Filmes
 INNER JOIN Atores ON Filmes.Id = Atores.Id
 INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id