--¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?

select actor_id, count(serie_id) as cantidad_series from actuaciones group by actor_id;

--¿Cúal es la serie con mejor rating promedio según imdb?

select serie_id, AVG(rating_imdb) as mejor_rating from episodios
group by serie_id
order by mejor_rating DESC;

-- ¿Cúal es el episodio con la duración más larga?

select distinct duracion from episodios order by duracion desc;