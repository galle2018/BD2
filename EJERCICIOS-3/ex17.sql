# 17. Retorne o nome do país em conjunto com a média de população das cidades (do país). Ordene
# da menor a maior pela média da população.

use world;
SELECT country.name, AVG(city.Population)
FROM country
INNER JOIN city
ON city.CountryCode = country.Code
GROUP BY country.name
ORDER BY 2;