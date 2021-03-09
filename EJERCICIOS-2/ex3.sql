# 3. Retorne todos os empregados cujo número seja 110022 ou 110085 ou 10006. Apresente o
# nome, sobrenome e nome do departamento que ele gerencia (left join)

USE psdb; # la selecciono

SELECT 
employees.first_name, 
employees.last_name, 
departments.dept_name

FROM employees

LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no

INNER JOIN departments ON dept_manager.dept_no = departments.dept_no

WHERE employees.emp_no = 110022 OR employees.emp_no = 110085 OR employees.emp_no = 10006;