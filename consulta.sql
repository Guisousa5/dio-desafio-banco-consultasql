Select Nome,Ano from dbo.Filmes;
Select Nome,Ano,Duracao from dbo.Filmes order by Ano ASC ;

Select Nome,Ano,Duracao from dbo.Filmes where Nome = 'De Volta para o Futuro';

Select * from dbo.Filmes where Ano = 1997;
Select * from dbo.Filmes where Ano > 2000;
Select Nome,Ano,Duracao from dbo.Filmes where Duracao BETWEEN 101 AND 149 ;
select ano,count(nome) as Quantidade from dbo.Filmes group by ano order by Quantidade desc;
select * from Atores where genero = 'M';
select * from Atores where genero = 'F' order by PrimeiroNome;

Select a.Nome,g.Genero from dbo.Filmes as a  join FilmesGenero as b on b.IdFilme = a.Id join Generos as g on g.Id = b.IdGenero;
Select a.Nome,g.Genero from dbo.Filmes as a  join FilmesGenero as b on b.IdFilme = a.Id join Generos as g on g.Id = b.IdGenero where Genero = 'Mistério';
Select a.Nome, ato.PrimeiroNome, ato.UltimoNome, ef.Papel from dbo.Filmes AS a join ElencoFilme  as ef on ef.IdFilme = a.Id join Atores as ato on ato.Id = ef.IdAtor;
