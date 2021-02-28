# 28. Escreva uma consulta SQL que retorne os empregados (employees) cujo número (emp_no) seja (IN)
# 15037 ou 14039 ou 16039.

USE psdb; # la selecciono
SELECT * FROM psdb.employees where emp_no IN(15037,14039,16039);