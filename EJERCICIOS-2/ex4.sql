# 4. Crie a consulta solicitada abaixo:
# a. Primeiro insira esta nova linha na tabela de departamentos: insert into departments
# values ('d99','Compras internas');
# b. É desejado obter todos os departamentos e seus gerentes. Apresente o nome do
# departamento, nome e sobrenome do empregado. De forma obrigatório a tabela de
# departamentos tem que estar localizada do lado direito da consulta. Crie a consulta
# execute e comente o resultado encontrado (right join)

USE psdb; # la selecciono

INSERT INTO departments VALUES ('d99', 'Compras Internas');
SELECT 
departments.dept_name, 
employees.first_name, 
employees.last_name

FROM employees

INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no

RIGHT JOIN departments ON dept_manager.dept_no = departments.dept_no

