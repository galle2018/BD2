# 18. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name) seja
# igual a 'Basil', o sobrenome (last_name) igual a 'Strooper' e o sexo (gender) seja igual a 'M'.

USE psdb; # la selecciono
SELECT * FROM employees 
where 
first_name='Basil' 
and last_name='Strooper' 
and gender='M';