-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.

SELECT genero, COUNT(*) AS cantidad_de_series
FROM Series
GROUP BY genero
ORDER BY cantidad_de_series DESC;

-- Esta consulta SQL nos permite ver cuántas series hay en cada género dentro de la base de datos NetflixDB. 
-- Agrupando las series por su género y contándolas, podemos identificar cuáles géneros son más prevalentes.

-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.

SELECT Series.titulo, COUNT(Episodios.episodio_id) AS numero_de_episodios, AVG(episodios.rating_imdb) AS promedio_imdb
FROM Series
INNER JOIN Episodios ON Series.serie_id = Episodios.serie_id
GROUP BY Series.serie_id
ORDER BY promedio_imdb DESC
LIMIT 3;

-- Con esta consulta, identificamos las tres series con el mayor rating IMDB 
-- en la base de datos y contamos cuántos episodios tiene cada una de ellas, combinando información de las tablas Series y Episodios.

-- ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT SUM(Episodios.duracion) AS duracion_total
FROM Series
INNER JOIN Episodios ON Series.serie_id = Episodios.serie_id
WHERE Series.titulo = 'Stranger Things';