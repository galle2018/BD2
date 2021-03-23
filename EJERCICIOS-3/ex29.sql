# 29. Conte o total de filmes por categoria.

use sakila;
select category.name, count(film_category.film_id) as Total
FROM category
INNER JOIN film_category
ON film_category.category_id = category.category_id
group by category.name;


