# 24. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Yinghua' ou igual a 'Elvis'.

USE psdb; # la selecciono
SELECT * FROM employees 
where (first_name='Yinghua' 
or first_name='Elvis');