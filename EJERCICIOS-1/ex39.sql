# 39. Selecione todos os países nos quais se fala a língua ‘Dutch’.

# en country no veo col language, en countrylanguage si

USE WORLD; # la selecciono
SELECT * FROM countrylanguage where language='Dutch';
