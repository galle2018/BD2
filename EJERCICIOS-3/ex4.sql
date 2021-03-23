# 4. Retorne o nome dos continentes e o total de países que nele existem. Filtre os continentes que
# possuem mais que 50 países.

use world;
SELECT country.Continent, COUNT(country.Continent) 
AS Total FROM  country
GROUP BY country.Continent
HAVING Total > 50;
