SELECT series.titulo AS 'TITULO DE LA SERIE',
		episodios.titulo AS 'TITULO DEL EPISODIO',
		rating_imdb AS 'RATING IMDB'
FROM Series LEFT JOIN Episodios
ON series.serie_id = episodios.serie_id
ORDER BY series.titulo 