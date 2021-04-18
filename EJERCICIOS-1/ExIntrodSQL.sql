USE psdb;
-- 1 -------------------
SELECT * FROM employees;

-- 2 -------------------
SELECT emp_no, first_name FROM employees;

-- 3 -------------------
SELECT DISTINCT first_name FROM employees;

-- 4 -------------------
SELECT DISTINCT first_name FROM employees
ORDER BY first_name;

-- 5 -------------------
SELECT DISTINCT first_name FROM employees
ORDER BY first_name DESC;
USE psdb;
-- 6 -------------------
SELECT distinct first_name FROM employees
ORDER BY first_name ASC;

-- 7 -------------------
SELECT DISTINCT first_name, last_name FROM employees;

-- 8 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name, last_name;

-- 9 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name desc, last_name desc;

USE psdb;
-- 10 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name ASC, last_name ASC;

-- 11 -------------------
SELECT * FROM employees LIMIT 100;

-- 12 -------------------
SELECT * FROM employees  ORDER BY emp_no  LIMIT 100;

-- 13 -------------------
SELECT * FROM employees  ORDER BY emp_no ASC  LIMIT 100;

-- 14 -------------------

SELECT * FROM employees  ORDER BY emp_no DESC  LIMIT 100;

-- 15 -------------------
SELECT * FROM employees   WHERE FIRST_NAME = 'Basil';

-- 16 -------------------
SELECT * FROM employees   WHERE first_name = 'Basil' AND gender = 'M';
USE psdb;
-- 17 -------------------
SELECT * FROM employees  WHERE first_name = 'Basil' AND gender <> 'M';

-- 18 -------------------
SELECT * FROM employees
WHERE 
first_name = 'Basil'
AND last_name = 'Strooper'
AND gender = 'M';

-- 19 -------------------
SELECT * FROM employees  
WHERE
first_name LIKE 'Crist%' ;

-- 20 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%zette' ;

-- 21 -------------------
SELECT * FROM employees
WHERE
FIRST_NAME LIKE '%zette'
AND GENDER = 'M';

USE psdb;
-- 22 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%arvi%';

-- 23 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%arvi%'
AND gender = 'M';

-- 24 -------------------
SELECT *
FROM employees
WHERE
(first_name = 'Yinghua' OR
first_name = 'Elvis');

-- 25 ------------------- AQUi

SELECT *
FROM employees
WHERE
(first_name = 'Yinghua' OR  first_name = 'Elvis')
AND gender = 'M';

USE psdb;
-- 26 -------------------
SELECT * FROM employees WHERE emp_no = 14037;

-- 27 -------------------
SELECT first_name, last_name FROM employees WHERE emp_no = 14037;

-- 28 -------------------
SELECT * FROM employees WHERE emp_no IN (15037,14039,16039);

-- 29 -------------------
SELECT * FROM employees WHERE emp_no BETWEEN 14037 AND 14042;

-- 30 -------------------
SELECT * FROM employees WHERE emp_no >= 14037 AND emp_no <= 14047;

-- 31 -------------------
SELECT * FROM employees  
WHERE first_name LIKE 'Crist%' AND emp_no > 485733;

USE psdb;
-- 32 -------------------
SELECT * FROM employees  WHERE first_name LIKE 'Crist%' AND emp_no >= 485733;

-- 33 -------------------
SELECT * FROM employees  WHERE first_name LIKE '%Crist%' AND emp_no < 37126;

-- 34 -------------------
SELECT * FROM employees 
WHERE first_name LIKE '%Crist%' AND emp_no <= 37126;

-- 35 -------------------
SELECT * FROM employees  
WHERE emp_no IN (494831,479832,599833,499832) AND gender IN ('M','F');

-- 36 -------------------
SELECT * FROM employees  
WHERE  emp_no IN (494831,479832,599833,499832) AND gender IN ('M','F') LIMIT 10;

-- 37 -------------------
SELECT * FROM employees emp   
WHERE  emp.emp_no IN (494831,479832,599833,499832) AND emp.gender IN ('M','F');

USE psdb;
-- 38 -------------------
SELECT emp.emp_no 'Numero', emp.first_name 'Nome' 
FROM employees emp   
WHERE  emp.emp_no IN (494831,479832,599833,499832) AND emp.gender IN ('M','F');


# ----------------------------------------------------------------------------------
# J O I N S ------------------------------------------------------------------------

USE world;
-- 39 -------------------
SELECT country.* FROM country 
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code
WHERE countrylanguage.Language = 'Dutch';

-- 40 -------------------
# Respota 1 ---------------------------------------
SELECT city.* FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

INNER JOIN city
ON city.CountryCode = country.Code

WHERE countrylanguage.Language = 'Dutch';
# -----------------------------------------------------

# Resposta 2 - Verificar planos de execução
SELECT city.* FROM city 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = city.CountryCode

WHERE countrylanguage.Language = 'Dutch';
# -----------------------------------------------------

-- 41 -------------------
SELECT * 

FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

WHERE countrylanguage.Language = 'Spanish' 
AND countrylanguage.IsOfficial = 'T';

-- 42 -------------------
SELECT * 

FROM country 

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.Code

WHERE countrylanguage.Language = 'Spanish' 
AND countrylanguage.IsOfficial = 'T'
AND countrylanguage.Percentage > 96;

-- 43 -------------------
SELECT city.* 

FROM city 

INNER JOIN country
ON country.code = city.CountryCode

WHERE country.Code = 'BRA'
AND city.Population > 1000000;

-- 44 -------------------
SELECT  
	country.name, 	
    country.Continent, 
    country.Region, 
    country.Population,
	city.name city_name, 
    city.District, 
    city.Population, 
    countrylanguage.Language
    
FROM country

INNER JOIN city 
ON city.CountryCode = country.code

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.code 

WHERE country.Continent = 'Europe';

-- 45 -------------------
SELECT  
	country.name, 	
    country.Continent, 
    country.Region, 
    country.Population,
	city.name city_name, 
    city.District, 
    city.Population, 
    countrylanguage.Language
    
FROM country

INNER JOIN city 
ON city.CountryCode = country.code

INNER JOIN countrylanguage
ON countrylanguage.CountryCode = country.code 

WHERE country.Continent = 'Europe'
AND countrylanguage.IsOfficial= 'T';
