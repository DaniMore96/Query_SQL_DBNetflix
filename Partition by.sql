-- Escribe una consulta de SQL que genere un ranking de episodios para cada temporada de Stranger Things (serie_id = 2)
-- basándose en las calificaciones de IMDb, de modo que puedas identificar los episodios mejor valorados dentro de cada temporada.
-- Sugerencias:
-- Seleccionar Columnas Relevantes: Selecciona temporada, titulo y rating_imdb de la tabla Episodios.
-- Aplica ROW_NUMBER() para asignar rangos:
-- Utiliza la función de ventana ROW_NUMBER() en combinación
-- con OVER (PARTITION BY temporada ORDER BY rating_imdb DESC) para asignar un ranking a cada episodio dentro de su respectiva temporada, basándose en su rating de IMDb.
-- Esto asegura que el episodio con el rating más alto en cada temporada reciba el ranking 1, y así sucesivamente.
-- Recuerda definirle un alias Ranking IMDb
-- Filtrar por Serie Específica:
-- Asegúrate de filtrar los resultados para incluir solo los episodios de "Stranger Things", utilizando WHERE serie_id = 2
-- Ordenar el Resultado Final:
-- Ordena los resultados primero por temporada y luego por Ranking IMDb para facilitar la interpretación de los datos.


SELECT temporada, titulo, rating_imdb,
row_number() over(partition by temporada order by rating_imdb desc) AS 'Ranking IMDb'
from episodios
where serie_id = 2
order by temporada, rating_imdb DESC;