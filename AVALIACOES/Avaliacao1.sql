# Resolva as questões abaixo utilizando o banco de dados Sakila

# ***********************************************************************************************************************
# 1. Programe um comando SQL para retornar o código do cliente e a soma do total de pagamentos realizados. 
#    Filtre os clientes pelos códigos 2, 11, 20 e 37.
use sakila;
select customer_id, sum(amount) as TotalPagamentos
from payment
where customer_id in (2,11,20,37)
GROUP BY customer_id;

# para verificar------------------
select customer_id, amount
from payment
where customer_id in (2,11,20,37);
# fin verificacion----------------
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 2. Programe um comando SQL que retorne o código do cliente, nome, sobrenome e o total de pagamentos realizados. 
#    Filtre os clientes pelos códigos 2, 11, 20 e 37.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS TotalPagamentos 
FROM customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id 
group by customer.customer_id
having customer_id in (2,11,20,37);
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 3. Programe um comando SQL que retorne o código do cliente, nome, sobrenome e a soma do total de pagamentos realizados. 
#    Filtre o nome do cliente cujo nome seja igual a ‘ELLEN’. Filtre o total de pagamentos
#    realizados para retornar apenas os valores entre 100 e 125.
use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total 
FROM customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id 
group by customer.customer_id
#having first_name="ELLEN" and SUM(payment.amount)>=100 and SUM(payment.amount)<=125;
having first_name="ELLEN" and SUM(payment.amount) BETWEEN 100 AND 125;


#comprobando pagos ELLEN---------------------------------------------------------------------------
select customer_id, amount
from payment
where customer_id in (126); #and amount<4;
#--------------------------------------------------------------------------------------------------
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 4. Programe um comando SQL que retorne o código da categoria, o nome e a média de tempo
#    dos filmes que a ela pertencem.
use sakila;
SELECT category.category_id, category.name as TipoFilme, avg(film.length) as MediaTempoFilmes
from category
INNER JOIN film_category
on film_category.category_id=category.category_id
inner join film
on film.film_id=film_category.film_id
group by category.category_id;

#Listando peliculas y duracion de la categoria Sports---------------------------------------------------
select film.film_id, film.title as NombrePelicula, film.length as Duracion, category.name as Categoria
from film
inner join film_category
on film.film_id=film_category.film_id
inner join category
on category.category_id=film_category.category_id
group by film_id
having Categoria='Sports';
#-------------------------------------------------------------------------------------------------------

# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 5. Ordene a consulta resultante da questão número 4 por média de tempo em ordem
# descendente. Filtre a média de tempo para retornar apenas os filmes com a média entre 120 e
# 130.
use sakila;
SELECT category.category_id, category.name as TipoFilme, avg(film.length) as MediaTempoFilmes
FROM category
INNER JOIN film_category
on film_category.category_id=category.category_id
INNER JOIN film
ON film.film_id=film_category.film_id
GROUP BY category.category_id, TipoFilme
having avg(film.length) BETWEEN 120 AND 130
order by 3 desc;

# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 6. Programe um comando SQL para retornar o nome do país, nome da cidade, nome, sobrenome e e-mail do cliente.
#    Inclua também o endereço, o telefone e o código postal. Retorne apenas os
#    clientes cujo nome do país inicie com a letra ‘A’ ou que contenha o valor ‘nada’ em qualquer
#    lugar do nome.
use sakila;
SELECT country,city.city,customer.first_name,customer.last_name,customer.email,address.address,address.phone,address.postal_code    
FROM country
INNER JOIN city 
ON city.country_id = country.country_id 
INNER JOIN customer
ON customer.customer_id = city.country_id 
INNER JOIN address
ON address.address_id = customer.customer_id
where country like 'A%' or country like '%nada%';
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 7. Programe um comando SQL para retornar do ator o código, nome, sobrenome e total de filmes
#    nos quais ele atuou. Retorne apenas o autor com o maior número de filmes.
use sakila;
#opc1 -----------------------------------------------------------------------------------------------
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS TotalFilmes
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id
order by 4 desc
limit 1;
# ---------------------------------------------------------------------------------------------------
#opc2 -----------------------------------------------------------------------------------------------
select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.actor_id) AS TotalFilmes
FROM actor 
inner join film_actor
on film_actor.actor_id = actor.actor_id
group by actor.actor_id
having count(*)=(select max(TotalFilmes) #max_contador
	from(select film_actor.actor_id, count(*) TotalFilmes
		from film_actor group by film_actor.actor_id
        ) T
       );
# ---------------------------------------------------------------------------------------------------
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 8. Programe um comado SQL para retornar o nome do país, nome da cidade, nome, sobrenome e email do cliente.
#    Também retorne o endereço, telefone e código postal. Filtre os países que
#    iniciam com a letra ‘A’ ou que contém ‘nada’ em alguma parte do nome.
use sakila;       
SELECT country,city.city,customer.first_name,customer.last_name,customer.email,address.address,address.phone,address.postal_code    
FROM country
INNER JOIN city 
ON city.country_id = country.country_id 
INNER JOIN customer
ON customer.customer_id = city.country_id 
INNER JOIN address
ON address.address_id = customer.customer_id
where country like 'A%' or country like '%nada%';
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 9. Programe um comando SQL que sem utilizar o comando inner join faça a junção das tabelas country e city.
#    Retorne o nome do país e o nome da cidade. Ordene o nome do país de forma
#    descendentes e o nome da cidade de forma ascendente.
use sakila;
select c.country as pais, ci.city as cidade
from country c, city ci
where c.country_id=ci.country_id
order by pais desc , cidade asc;
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 10. Utilizando o comando CROSS JOIN calcule o tamanho (em número de registros) do produto
#     cartesiano obtido a partir das tabelas payment e customer, retorne o valor como resultado da
#     consulta.
use sakila;
select COUNT(*) from payment croos join customer; # cuenta las combinaciones
select * from payment croos join customer; # muestra todas las combinaciones
# ***********************************************************************************************************************



# ***********************************************************************************************************************
#11. Supondo que o tamanho médio dos registros da tabela payment seja de 100 bytes e o da
#     tabela customer seja de 134 bytes, calcule em MB o tamanho do produto cartesiano entre as
#     duas tabelas.
select ((count(*))*(234))/1024/1024 from payment cross join customer; #em mb
select ((count(*))*(234)) from payment cross join customer;#em bytes
# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 12. Programe uma consulta SQL que retorne os seguintes campos respeitando a seguinte ordem:
#     distrito, endereço, nome e sobrenome do cliente, código postal e telefone. Filtre aos clientes
#     que moram nas distintas cidades dos Estados Unidos ('United States') registradas na base de
#     dados. Não utilize junções para formar a consulta e sim subqueries. Ordene o resultado da
#     consulta por distrito, endereço, nome e sobrenome.
use sakila;
#opc1 -----------------------------------------------------------------------------------------------------------------
select a.district, a.address, c.first_name, c.last_name, a.postal_code, a.phone, ci.city, co.country
from address a, customer c, city ci, country co
where a.address_id=c.address_id and a.city_id=ci.city_id and ci.country_id=co.country_id and co.country='United States'
order by a.district, a.address, c.first_name, c.last_name;
#op2 ------------------------------------------------------------------------------------------------------------------

# ***********************************************************************************************************************



# ***********************************************************************************************************************
# 13. Programe uma consulta SQL que retorne o código do funcionário do staff, nome e o
#     sobrenome. Também deve ser retornado o total de aluguéis incluídos na base de dados por
#     cada um. Filtre a data dos aluguéis (rental_date) entre '2005-07-29' e '2021-07-30'.
use sakila;  # esta faltando filtrar por las fechas

select r.staff_id Id, s.first_name Nome,  s.last_name Sobrenome ,count(inventory_id) as TotalAlugadas
from rental r,staff s
where r.staff_id=s.staff_id and r.rental_date between '2005-07-29' and  '2021-07-30'
group by r.staff_id;

#-------------------------------------------------------------------------------------------------------------------
# ***********************************************************************************************************************




# ***********************************************************************************************************************
# 14. Programe uma consulta SQL que retorne o código e nome do filme assim como o total de
#     vezes que foi alugado. Ordene a consulta pelo campo total de forma descendente
use sakila;
select f.film_id, f.title,count(i.inventory_id) as Total
from film f 
inner join inventory i
on i.film_id=f.film_id
group by f.film_id
order by 3 desc;
# ***********************************************************************************************************************
