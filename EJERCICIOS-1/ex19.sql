# 19. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha no início a combinação de caracteres 'Crist'.

USE psdb; # la selecciono
SELECT * FROM employees 
where first_name LIKE 'Crist%';