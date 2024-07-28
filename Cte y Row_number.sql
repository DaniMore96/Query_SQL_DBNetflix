-- Escribe una consulta SQL que seleccione todas las series, incluyendo su titulo y año_lanzamiento
-- y utiliza la función de ventana ROW_NUMBER() para asignar un número secuencial a cada serie basado en su año de lanzamiento
-- (ORDER BY año_lanzamiento DESC), de la más reciente a la más antigua, esta última columna debe tener el nombre:


-- Ejercicio 1 
WITH todasSeries AS (
SELECT titulo, año_lanzamiento,
ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM series
)

SELECT * FROM todasSeries
WHERE clasificacion_global IN (1,2,3)


-- Ejercicio 2
WITH todasSeries AS (
SELECT titulo, año_lanzamiento FROM Series
)

SELECT titulo, año_lanzamiento,
ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM Series

