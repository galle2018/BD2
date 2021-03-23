# 10. Retorne o nome do continente e a média da área dos países (que fazem parte do continente).
# Ordene pela média da área de maior a menor.

use world;
SELECT country.Continent, AVG(country.SurfaceArea) 
FROM country  
GROUP BY country.Continent ORDER BY 2 DESC;