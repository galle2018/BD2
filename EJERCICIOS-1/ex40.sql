# 40. Selecione todas as cidades dos países no qual se fala a língua ‘Dutch’.

USE world; # la selecciono

# Respota 1 
SELECT city.* FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

INNER JOIN city
ON city.CountryCode = country.Code

WHERE countrylanguage.Language = 'Dutch';



# Resposta 2 - Verificar planos de execução
SELECT city.* FROM city 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = city.CountryCode

WHERE countrylanguage.Language = 'Dutch';
