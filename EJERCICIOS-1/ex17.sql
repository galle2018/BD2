# 17. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Basil' e o sexo (gender) seja diferente de 'M'.

USE psdb; # la selecciono
SELECT * FROM employees where first_name='Basil' and gender<>'M';