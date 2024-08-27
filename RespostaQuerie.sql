SELECT 
Nome,
Ano
FROM Filmes

-- 2
SELECT * FROM Filmes
ORDER BY Ano

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = '1997'

-- 5
SELECT * FROM Filmes
WHERE Ano > '2000'

-- 6
SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

-- 7
SELECT  
	Ano,
	COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER By Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
Filmes.Nome,
Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.ID = FilmesGenero.IdGenero;

-- 11
SELECT 
Filmes.Nome,
Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.ID = FilmesGenero.IdGenero
WHERE 
Generos.Genero = 'Mistério';