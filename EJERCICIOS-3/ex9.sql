# 9. Retorne o nome do continente e a média da área dos países (que fazem parte do continente).

use world;
SELECT country.Continent, AVG(country.SurfaceArea) 
FROM country  
GROUP BY country.Continent;