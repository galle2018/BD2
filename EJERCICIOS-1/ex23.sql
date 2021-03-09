# 23. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo nome (first_name)
# contenha a combinação de caracteres 'arvi' e o sexo (gender) seja igual a 'M'.

USE psdb; # la selecciono
SELECT * FROM employees 
where first_name LIKE '%arvi%' 
and gender='M';