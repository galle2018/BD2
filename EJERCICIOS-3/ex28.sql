# 28. Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
# participou. Filtre pelo id de autor número 100.

use sakila;
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS Total
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 100
group by actor.actor_id, actor.first_name, actor.last_name;

