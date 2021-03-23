# 13. Retorne o nome do país e o total de idiomas que nele se falam.

use world;
SELECT country.name, count(countrylanguage.CountryCode)
FROM country
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
GROUP BY country.name;