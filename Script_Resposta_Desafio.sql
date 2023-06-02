--Ivan de Mello Junior - 02/06/23

/*1*/SELECT Nome, Ano from FILMES;


/*2*/SELECT Nome, Ano, Duracao FROM FILMES ORDER BY ANO ASC;


/*3*/SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'De Volta para o Futuro';


/*4*/SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano = 1997;


/*5*/SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano > 2000;


/*6*/SELECT Nome, Ano, Duracao FROM FILMES WHERE Duracao > 100 AND Duracao < 150;


/*7*/SELECT Ano, COUNT(Ano) AS Quantidade  FROM FILMES GROUP BY ANO ORDER BY Quantidade DESC;


/*8*/SELECT * FROM ATORES WHERE Genero = 'M';


/*9*/SELECT * FROM ATORES WHERE Genero = 'F' ORDER BY PrimeiroNome;


/*10*/SELECT FM.Nome, GEN.Genero FROM FILMES AS FM 
	INNER JOIN FilmesGenero AS FMG 
		ON FM.Id = FMG.IdFilme 
	INNER JOIN Generos AS GEN 
		ON FMG.IdGenero = GEN.Id;


/*11*/SELECT FM.Nome, GEN.Genero FROM FILMES AS FM 
	INNER JOIN FilmesGenero AS FMG 
		ON FM.Id = FMG.IdFilme 
	INNER JOIN Generos AS GEN 
		ON FMG.IdGenero = GEN.Id WHERE Genero = 'Mistério';


/*12*/SELECT FM.Nome, ATR.PrimeiroNome, ATR.UltimoNome, ELF.Papel FROM FILMES AS FM 
	INNER JOIN ElencoFilme AS ELF
		ON FM.Id = ELF.IdFilme
	INNER JOIN Atores AS ATR
		ON ELF.IdAtor = ATR.Id;