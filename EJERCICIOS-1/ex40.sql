# 40. Selecione todas as cidades dos países no qual se fala a língua ‘Dutch’.

USE world; # la selecciono
SELECT city.* FROM city where countrycode in ('ABW','ANT','BEL','CAN','NLD');
