# WORLD
use world;

# 1 Conte o total de países.
SELECT COUNT(country.Code) AS Total FROM  country;

# 2 Retorne o nome dos continentes e o total de países que neles existem.
SELECT country.Continent, COUNT(country.Continent) AS Total FROM  country
GROUP BY country.Continent;

# 3 Retorne o nome dos continentes e o total de países que neles existem. Ordene o resultado em
# ordem alfabética pelo nome do continente
SELECT country.Continent, COUNT(country.Continent) AS Total FROM  country
GROUP BY country.Continent 
ORDER BY 1;

# 4 Retorne o nome dos continentes e o total de países que nele existem. Filtre os continentes que
# possuem mais que 50 países.
SELECT country.Continent, COUNT(country.Continent) AS Total FROM  country
GROUP BY country.Continent
HAVING Total > 50;

# 5 Retorne a área do maior país
SELECT Name, MAX(country.SurfaceArea) FROM country; #op1
SELECT Name, MAX(country.SurfaceArea) as MaiorArea FROM country; #op2

# 6 Retorne a área do menor país.
SELECT MIN(country.SurfaceArea) FROM country;

# 7 Retorne a média da área de todos os países.
SELECT AVG(country.SurfaceArea) FROM country;

# 8 Retorne a média da área dos países da Europa.
SELECT AVG(country.SurfaceArea) FROM country WHERE country.Continent = 'Europe';

# 9 Retorne o nome do continente e a média da área dos países (que fazem parte do continente).
SELECT country.Continent, AVG(country.SurfaceArea) as MediaAreaPaises FROM country  
GROUP BY country.Continent;

# 10 Retorne o nome do continente e a média da área dos países (que fazem parte do continente).
# Ordene pela média da área de maior a menor.
SELECT country.Continent, AVG(country.SurfaceArea) as MediaAreaPaises FROM country  
GROUP BY country.Continent ORDER BY 2 DESC;

# 11  Retorne o nome do continente e a área do maior país (do continente).
SELECT country.Continent, MAX(country.SurfaceArea) as MaiorAreaPais FROM country  
GROUP BY country.Continent;

# 12 Retorne o nome do continente e a área do maior país (do continente). Ordene o resultado pela
# a área de maior a menor.
SELECT country.Continent, Name, MAX(country.SurfaceArea) FROM country  
GROUP BY country.Continent ORDER BY 2 DESC;



# 13 Retorne o nome do país e o total de idiomas que nele se falam.
SELECT country.name, count(countrylanguage.CountryCode)
FROM country
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
GROUP BY country.name;



# 14 Retorne o nome do país e o total de idiomas que nele se falam. Limite o resultado apenas aos
# países nos quais se fala mais que 10 idiomas.
SELECT country.name, count(countrylanguage.CountryCode) AS Total
FROM country
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
GROUP BY country.name
HAVING Total > 10;



# 15 Retorne o nome do país e o total de cidades que nele existem.
SELECT country.name, count(city.CountryCode)
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name;



# 16 Retorne o nome do país em conjunto com a média de população das cidades (do país).
use world;

SELECT country.name, AVG(city.Population) as MediaPopulacaoCidades
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name;


# 17 Retorne o nome do país em conjunto com a média de população das cidades (do país). Ordene
# da menor a maior pela média da população.
SELECT country.name, AVG(city.Population)
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name
ORDER BY 2;

# 18 Retorne o nome do país em conjunto com a média de população das cidades (do país). Limite
# o resultado apenas pelos países cuja média de população das cidades seja maior que 70000.
# Ordene o resultado de forma ascendente.
use world;
SELECT country.name, AVG(city.Population) AS Media_Maior_a_70000
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name
HAVING Media_Maior_a_70000 > 70000
ORDER BY 2;


# UTILIZANDO SAKILA --------------------------------------------------------------------------------------
# 19 Some o total de pagamentos realizados.
use sakila;
SELECT customer_id, SUM(amount) FROM payment;
#otra opcion con modifiacion mia ------------------------------
SELECT customer_id, SUM(amount) as Suma_de_Pagos FROM payment 
where customer_id in (2,11,20,37)
group by customer_id;
# -------------------------------------------------------------

# 20 Calcula a média dos pagamentos realizados
use sakila;
SELECT AVG(amount) FROM payment;
#otra opcion con modifiacion mia ------------------------------
SELECT customer_id, AVG(amount) Media_de_Pagos FROM payment 
where customer_id in (2,11,20,37)
group by customer_id;
# -------------------------------------------------------------


# 21 Retorne o id, nome e sobrenome do cliente (customer), em conjunto com a soma do total de
# pagamentos realizados (payment.amout)
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total FROM
customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
group by customer.customer_id, customer.first_name, customer.last_name;

# 22 Retorne o id, nome e sobrenome do cliente (customer), em conjunto com a soma do total de
# pagamentos realizados (payment.amout). Ordene o resultado pelo nome e sobrenome.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total FROM
customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
ORDER BY 2, 3; 

# 23 Retorne o id, nome e sobrenome do cliente (customer), em conjunto com o total de
# pagamentos realizados (payment.amout). Ordene o resultado pelo valor dos pagamentos.
# Limite o resultado apenas aos clientes que tenham um montante maior que 100.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total FROM
customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
HAVING Total > 100 
ORDER BY 4; 


# 24 Retorne do staff o id, nome, sobrenome além do total de cobranças (payment) feitas por cada
# integrante.
use sakila;
select staff.staff_id, staff.first_name, staff.email , sum(payment.amount) AS Total
FROM payment
inner join staff ON staff.staff_id = payment.staff_id
GROUP BY  staff.staff_id, staff.first_name, staff.email;

# 25 Retorne do staff o id, nome e sobrenome além do total de cobranças (payment) feitas por cada
# integrante. Limite a data (payment_date) dos pagamentos entre '2005-05-25' e '2005-08-23'.
use sakila;
select staff.staff_id, staff.first_name, staff.last_name , sum(payment.amount) AS Total
FROM payment
inner join staff ON staff.staff_id = payment.staff_id
WHERE payment_date between '2005-05-25' and '2005-08-23'
GROUP BY  staff.staff_id, staff.first_name, staff.last_name;

# 26 Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
# participou.
use sakila;
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS Total
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id, actor.first_name, actor.last_name;

# 27 Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
# participou. Ordene pelo total de filme de menor a maior.
use sakila;
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS Total
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id, actor.first_name, actor.last_name
ORDER BY Total;

# 28 Retorne o id, nome e sobrenome dos autores além do total de filmes dos quais cada um já
# participou. Filtre pelo id de autor número 100.
use sakila;
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS Total
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
#WHERE actor.actor_id = 100
group by actor.actor_id, actor.first_name, actor.last_name;

# 29 Conte o total de filmes por categoria.
use sakila;
select category.name, count(film_category.film_id) as Total
FROM category
INNER JOIN film_category
ON film_category.category_id = category.category_id
group by category.name;
