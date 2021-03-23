# 14. Retorne o nome do país e o total de idiomas que nele se falam. Limite o resultado apenas aos
# países nos quais se fala mais que 10 idiomas.

use world;
SELECT country.name, count(countrylanguage.CountryCode) AS Total
FROM country
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
GROUP BY country.name
HAVING Total > 10;