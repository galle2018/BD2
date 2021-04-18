USE psdb;
SELECT
employees.first_name,
employees.last_name,
dept_manager.dept_no
FROM employees
LEFT JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
WHERE employees.emp_no IN (110022, 110085, 10006);


# prueba RIGHT JOIN
# Para simular o exemplo, execute o seguinte comando: INSERT INTO departments VALUES ('d99','Compras Internas');
# INSERT INTO departments VALUES ('d99','Compras Internas');
SELECT
employees.first_name,
employees.last_name,
departments.dept_name
FROM employees
RIGHT JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
RIGHT JOIN departments
ON departments.dept_no = dept_manager.dept_no;

# ultimo comentario
