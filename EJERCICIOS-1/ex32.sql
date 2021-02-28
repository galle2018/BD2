# 32. Selecione os empregados (employees) cujo nome (first_name) contenha no início a combinação de
# caracteres 'Crist' e cujo número (emp_no) seja maior ou igual que 485733.

USE psdb; # la selecciono
SELECT * FROM employees where first_name LIKE'Crist%' and emp_no>=485733;