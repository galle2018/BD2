# 38. Escreva uma consulta SQL que retorne todos os empregados (employees) cujo número esteja entre (IN)
# 494831 ou 479832 ou 599833 ou 499832 e sexo (gender) entre 'M' e 'F'. Coloque o apelido
# (ALIASES) na tabela empregados (employees) de 'emp' e referencie este nome nos campos da clausula
# WHERE em conjunto com o nome do campo para realizar o filtro (emp.emp_no). Exiba apenas os
# campos número (emp_no) e nome (first_name), para estes de o apelido (ALIASES) de 'Numero' para o
# campo emp_no e de 'Nome' para o campo firts_name.

# CON ERROR AUN (FALTA ESTA 37 y LA 38)

USE psdb; # la selecciono
SELECT emp_no AS "Numero", first_name AS "Nome" FROM employees AS emp 
WHERE emp.emp_nro IN(494831,479832,599833,499832) AND emp.gender IN('M','F');

# con error en ambos casos

SELECT emp_no AS "Numero", first_name AS "Nome" FROM employees AS emp 
WHERE emp.emp_no IN (494831, 479832, 599833, 499832) AND (emp.gender BETWEEN "M" AND "F");