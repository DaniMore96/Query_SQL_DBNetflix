-- Condicionales CASE 
SELECT
	titulo,
	año_lanzamiento,
    CASE
	WHEN año_lanzamiento >= 2020 THEN 'NUEVA'
	WHEN año_lanzamiento BETWEEN 2010 AND 2019 THEN 'CLASICA'
        ELSE 'ANTIGUA'
        END AS 'CATEGORIA'
	FROM Series
    
-- Condicionales IF
SELECT titulo, año_lanzamiento,
	IF(año_lanzamiento >= 2014, 'Plazo', 'Fuera') AS 'Categoria'
    	FROM Series
    	ORDER BY año_lanzamiento DESC;

-- EJERCICIO
-- Escribe una consulta SQL que seleccione el titulo de todas las series de la tabla Series junto con una nueva columna denominada 'Antigüedad'.
-- Esta columna debe mostrar 'Antigua' para las series lanzadas antes del año 2010 y 
-- 'Reciente' para las series lanzadas en 2010 o después, puedes utilizar el campo año_lanzamiento para realizar dicha clasificación.

SELECT titulo,
	CASE
		WHEN año_lanzamiento < 2010 THEN 'Antigua'
        	WHEN año_lanzamiento >= 2010 THEN 'Reciente'
        	ELSE 'NO TIENE AÑO DE LANZAMIENTO'
        	END AS 'Antigüedad'
		FROM Series
    		ORDER BY año_lanzamiento;

