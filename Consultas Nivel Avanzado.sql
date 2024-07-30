-- Identificar las series más existosas en las base de daatos de NetflixDB
-- Cantidad de episodios y ranting promedio de imdb


WITH Serieexitosa AS (
SELECT serie_id,
		count(episodio_id) AS num_episodios
FROM episodios
group by serie_id
),
Tserie AS (
SELECT serie_id,
		avg(rating_imdb) as promedio_imdb
FROM episodios
group by serie_id
)
SELECT 
	s.titulo,
	se.num_episodios,
    ts.promedio_imdb
FROM Series s JOIN Serieexitosa se ON s.serie_id = se.serie_id
JOIN Tserie ts ON ts.serie_id = s.serie_id
ORDER BY ts.promedio_imdb DESC, se.num_episodios DESC;