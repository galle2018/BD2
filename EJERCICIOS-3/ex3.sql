# 3. Retorne o nome dos continentes e o total de países que neles existem. Ordene o resultado em
# ordem alfabética pelo nome do continente.

use world;
SELECT country.Continent, COUNT(country.Continent) 
AS Total FROM  country
GROUP BY country.Continent 
ORDER BY 1;
