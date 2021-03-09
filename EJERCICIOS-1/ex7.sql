# 7. Escreva uma consulta SQL que retorne distintas combinações de nomes (first_name) e sobrenomes
# (last_name) da tabela empregados (employees).

USE psdb; # la selecciono
SELECT DISTINCT first_name, last_name FROM employees;