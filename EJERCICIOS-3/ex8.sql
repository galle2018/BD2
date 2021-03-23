# 8. Retorne a média da área dos países da Europa.

use world;
SELECT AVG(country.SurfaceArea) FROM country WHERE country.Continent = 'Europe';