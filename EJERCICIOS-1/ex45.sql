# 45. Programe uma consulta que retorne o seguinte: 
# da tabela pais o nome, continente, região e população.
# Da tabela cidade o nome, o distrito e a população. 
# Da tabela língua do país o nome do idioma. 
# Selecione apenas os idiomas oficiais e os países que se encontram no continente ‘Europe’.

USE WORLD; # la seleccionocity

SELECT  
    country.name, 	
    country.Continent, 
    country.Region, 
    country.Population,
    city.name city_name, 
    city.District, 
    city.Population, 
    countrylanguage.Language
    
FROM country

INNER JOIN city 
ON city.CountryCode = country.code

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.code 

WHERE country.Continent = 'Europe'
AND countrylanguage.IsOfficial= 'T';

