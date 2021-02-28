# 16. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) sejaigual a 'Basil' e o sexo (gender) igual a 'M'.

USE psdb; # la selecciono
SELECT * FROM psdb.employees where first_name='Basil' and gender='M';