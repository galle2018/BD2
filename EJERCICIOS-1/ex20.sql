# 20. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha no final os seguintes caracteres 'zette'.

USE psdb; # la selecciono
SELECT * FROM employees 
where first_name LIKE '%zette';