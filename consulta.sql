-- 1. Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM dbo.Filmes;

-- 2. Buscar o nome, ano e duração dos filmes, ordenados pelo ano (crescente)
SELECT Nome, Ano, Duracao FROM dbo.Filmes ORDER BY Ano ASC;

-- 3. Buscar pelo filme "De Volta para o Futuro", trazendo nome, ano e duração
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997
SELECT * FROM dbo.Filmes WHERE Ano = 1997;

-- 5. Buscar os filmes lançados após o ano 2000
SELECT * FROM dbo.Filmes WHERE Ano > 2000;

-- 6. Buscar filmes com duração entre 101 e 149 minutos
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao ASC;

-- 7. Buscar a quantidade de filmes lançados por ano, ordenando pela quantidade (decrescente)
SELECT Ano, COUNT(Nome) AS Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8. Buscar os atores do gênero masculino
SELECT * FROM dbo.Atores WHERE Genero = 'M';

-- 9. Buscar os atores do gênero feminino, ordenando pelo PrimeiroNome
SELECT * FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10. Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero
FROM dbo.Filmes f
JOIN dbo.FilmesGenero fg ON fg.IdFilme = f.Id
JOIN dbo.Generos g ON g.Id = fg.IdGenero;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero
FROM dbo.Filmes f
JOIN dbo.FilmesGenero fg ON fg.IdFilme = f.Id
JOIN dbo.Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

-- 12. Buscar o nome do filme, atores e seus papéis
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM dbo.Filmes f
JOIN dbo.ElencoFilme ef ON ef.IdFilme = f.Id
JOIN dbo.Atores a ON a.Id = ef.IdAtor;
