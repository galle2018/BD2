# 4. Consultando a tabela empregados (employees), selecione os nomes (first_name) distintos. Ordene pelo
# campo nome (first_name).

USE psdb; # la selecciono
SELECT DISTINCT first_name FROM psdb.employees order by first_name;