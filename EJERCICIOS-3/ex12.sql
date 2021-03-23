# 12. Retorne o nome do continente e a área do maior país (do continente). Ordene o resultado pela
# a área de maior a menor.

use world;
SELECT country.Continent, MAX(country.SurfaceArea) 
FROM country  
GROUP BY country.Continent ORDER BY 2 DESC;