# 43. Selecione todas as cidades cujo código de pais seja ‘BRA’ e a população maior que 1000.000.

USE WORLD; # la selecciono

SELECT city.* FROM city 

INNER JOIN country
ON country.code = city.CountryCode

WHERE country.Code = 'BRA'
AND city.Population > 1000000;