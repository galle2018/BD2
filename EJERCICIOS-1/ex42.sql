# 42. Selecione todos os países cuja língua oficial seja o ‘Spanish’ e que a porcentagem da fala do idioma entre
# a população seja maior que 96.00.

USE WORLD; # la selecciono
SELECT * FROM countrylanguage where Language='Spanish' and Percentage>96.00;
