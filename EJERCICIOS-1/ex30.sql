# 30. Escreva uma consulta SQL que retorne os empregados (employees) cujo número (emp_no) seja maior ou
# igual a 14037 e menor ou igual a 14047.

USE psdb; # la selecciono
SELECT * FROM employees where emp_no>=14037 AND emp_no<=14047;