# 45. Programe uma consulta que retorne o seguinte: 
# da tabela pais o nome, continente, região e população.
# Da tabela cidade o nome, o distrito e a população. 
# Da tabela língua do país o nome do idioma. 
# Selecione apenas os idiomas oficiais e os países que se encontram no continente ‘Europe’.

USE WORLD; # la seleccionocity
SELECT Name,Continent,Region,Population FROM country;
SELECT Name,District,Population FROM city;
SELECT Language FROM countrylanguage;
SELECT IsOfficial FROM countrylanguage; # falta la parte que se encuentre en Europe
