# 13. Escreva uma consulta SQL que retorne todos os empregados (employees). Limite em 100 o número de
# registros retornados e ordene pelo campo número (emp_no) de forma ascendente.

USE psdb; # la selecciono
SELECT * FROM employees order by emp_no asc limit 100;