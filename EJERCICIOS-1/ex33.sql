# 33. Selecione os empregados (employees) cujo nome (first_name) contenha a combinação de caracteres 'Crist'
# e cujo número (emp_no) seja menor que 37126.

USE psdb; # la selecciono
SELECT * FROM employees where first_name LIKE'%Crist%' and emp_no<37126;