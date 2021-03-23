# 11. Retorne o nome do continente e a área do maior país (do continente).

use world;
SELECT country.Continent, MAX(country.SurfaceArea) FROM country  
GROUP BY country.Continent;