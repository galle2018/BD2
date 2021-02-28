# 6. Consultando a tabela empregados (employees), selecione os nomes (first_name) distintos. Ordene pelo
# campo first_name de forma ascendente.

USE psdb; # la selecciono
SELECT DISTINCT first_name FROM psdb.employees order by first_name asc;