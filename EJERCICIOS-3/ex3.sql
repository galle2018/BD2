# 3. Retorne o nome dos continentes e o total de países que neles existem. Ordene o resultado em
# ordem alfabética pelo nome do continente.

use world;
SELECT CAST(country.Continent as char)AS Continent, COUNT(country.Continent) 
AS Total FROM  country
GROUP BY country.Continent 
ORDER by 1; 

desc country #muestra el tipo de datos, era num, entonces se convirtio el atributo
