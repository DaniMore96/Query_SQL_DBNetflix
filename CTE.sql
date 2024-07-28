-- Ejercicio CTE 1

WITH CantidadSeries AS (
SELECT serie_id, año_lanzamiento, genero FROM Series
)

SELECT año_lanzamiento, COUNT(*) AS total_series FROM CantidadSeries
WHERE genero = 'Ciencia ficción'
GROUP BY año_lanzamiento;




-- Ejercicio CTE 2

WITH hola AS (
SELECT serie_id, fecha_estreno FROM episodios
),

estamos AS (
SELECT serie_id, titulo FROM series
)

SELECT estamos.titulo AS 'Titulo_de_la_Serie', MIN(hola.fecha_estreno) AS 'fecha_primer_episodio' 
FROM hola JOIN estamos
ON hola.serie_id = estamos.serie_id
GROUP BY estamos.titulo
ORDER BY 2;