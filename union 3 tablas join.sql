-- Haciendo union de varias tablas con JOIN



SELECT distinct actores.nombre, actuaciones.personaje, series.titulo
from series join actuaciones
on series.serie_id = actuaciones.serie_id
join actores
on actores.actor_id = actuaciones.actor_id;

select a.nombre, ac.personaje, s.titulo
from series s 
inner join actuaciones ac ON (s.serie_id = ac.serie_id)
inner join actores a ON (a.actor_id = ac.actor_id)