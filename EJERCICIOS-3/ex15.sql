# 15. Retorne o nome do país e o total de cidades que nele existem.

use world;
SELECT country.name, count(city.CountryCode)
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name;