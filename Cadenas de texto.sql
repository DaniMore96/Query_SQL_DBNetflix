-- Manipulación de cadenas de textos

SELECT substring (titulo, 1, 5) AS primeros_cinco_caracteres FROM Episodios;

SELECT upper(titulo) AS titulo_mayusculas FROM Series;

SELECT lower(nombre) AS nombre_actores FROM Actores;

SELECT concat(titulo, ' (', año_lanzamiento, ')') FROM Series;

SELECT length(titulo) FROM Series;

SELECT
	LEFT (titulo, 5) AS hasta_cinco,
    RIGHT (titulo, 4) AS hasta_cinco
FROM Series;