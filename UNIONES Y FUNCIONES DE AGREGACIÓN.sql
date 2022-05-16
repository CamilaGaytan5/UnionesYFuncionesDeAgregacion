/*Micro desafío 1*/

select  movies.id, movies.title, genres.name
from movies
left join genres on movies.genre_id = genres.id;

select episodes.title, actors.first_name , actors.last_name 
from episodes 
inner join actor_episode on episode_id = episodes.id
inner join actors on actor_id = actors.id;


/*Micro desafío 2*/

select distinct actors.first_name, actors.last_name 
from actors 
inner join actor_movie on actors.id = actor_id
inner join movies on movie_id = movies.id
where title like('La guerra%');

/*Micro desafío 3*/

select title, coalesce (name, "no tiene género") 
from movies 
left join genres on genre_id = genres.id;

/*Micro desafío 4*/

select title as "Titulo", datediff(end_date,release_date) as "Duracion"
from series;

/*Micro desafío 5*/

select actors.first_name , actors.last_name 
from actors
where char_length(actors.first_name) > 6
order by actors.first_name;

select count(*) from episodes; 

select series.title, count(*) as "Cantidad"
from series
inner join seasons on seasons.serie_id = series.id
group by series.id;

select genres.name , count(*) as "Cantidad"
from genres
inner join movies on genres.id = movies.genre_id 
group by genres.id
having count(*) >= 3; 

