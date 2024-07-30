-- RANK Y DENSE_RANK

SELECT titulo, rating_imdb,
RANK() OVER(ORDER BY rating_imdb DESC) AS 'ranking_imdb'
FROM episodios;


SELECT titulo, duracion,
DENSE_RANK() OVER(ORDER BY duracion DESC) AS 'ranking_por_duracion'
FROM episodios