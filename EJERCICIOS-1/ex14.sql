# 14. Escreva uma consulta SQL que retorne todos os empregados (employees). Limite em 100 o número de
# registros retornados e ordene pelo campo número (emp_no) de forma descendente.

USE psdb; # la selecciono
SELECT * FROM psdb.employees order by emp_no desc limit 100;