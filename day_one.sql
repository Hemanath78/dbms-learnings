-- SQL us case-insenitive

/*

We will follow:
UPPERCASE: keywords
lowercase: non-keywords

*/
-- use is used to select the database
USE store;

use store;

-- used to show the currently used database
SHOW TABLES;

USE exercise_hr;

SHOW TABLES;

USE store;

SHOW TABLES;
-- used to select a table from the store database
SELECT * FROM customers;

SELECT * FROM customers ORDER BY first_name;

-- ORDER BY <column-name> ASC/DESC

SELECT * FROM customers ORDER BY last_name DESC;

USE exercise_hr;

SELECT * FROM employees;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY FROM employees ORDER BY SALARY ASC;

/*

order: BODMAS

()
/
*
+
-

*/  

-- AS used to give column or field name

SELECT 100 - 50 /2 AS 'value';

/*

SELECT <column_1>, <column_2>, ... , <column_n> FROM <table_name>; 

SELECT * FROM <table_name>;
*/

USE store;

SELECT first_name FROM customers;

SHOW TABLES;

SELECT * FROM customers;


SELECT first_name, last_name, birth_date FROM customers;

SELECT first_name, last_name, points, points + 10 FROM customers;

SELECT first_name, last_name, points, points + 10 AS 'new_points' FROM customers;

SELECT first_name, last_name, points, points + 10 AS new_points FROM customers;

USE exercise_hr;

SHOW TABLES;

SELECT * FROM employees;

SELECT FIRST_NAME, LAST_NAME FROM employees;

SELECT * FROM employees;

SELECT FIRST_NAME, LAST_NAME, SALARY , SALARY * 15 / 100 AS PF FROM employees; 

SELECT * FROM employees;

USE store;

SHOW TABLES;

SELECT state FROM customers;

-- DISTINCT is used to fetch unique tupples from the column

SELECT DISTINCT state FROM customers;

USE exercise_hr;

SHOW TABLES;

SELECT * FROM employees;

SELECT DISTINCT DEPARTMENT_ID FROM employees;

USE store;

SELECT * FROM products;

-- ALTER TABLE products
-- RENAME COLUMN name TO product_name;

SELECT product_name, unit_price, unit_price * 1.1 AS new_price FROM products;

-- how to select partiuclar fields or rows from the table using where keyword 

USE store;

SELECT * FROM customers;

-- to check string values use inverted commas or if you compare with number don't need for inverted commas 

SELECT * FROM customers WHERE state = "FL";

SELECT * FROM customers WHERE points > 3000;

SELECT * FROM customers WHERE birth_date > '1990-01-01';

SELECT * FROM customers WHERE phone = "312-480-8498";

SELECT * FROM customers WHERE points > 3000 AND birth_date >= '1990-01-01';

SELECT * FROM customers WHERE points > 3000 OR birth_date >= '1990-01-01';

SELECT * FROM customers WHERE state = "FL" OR points < 4000;

SELECT * FROM customers WHERE birth_date > "1889-01-01" OR points > 1000 AND state="VA";

SELECT * FROM customers WHERE birth_date >= "1990-01-01" AND points > 1000 OR state = "FL";

SELECT * FROM customers WHERE NOT (state ="FL");

-- customers living in FL or VA or GA

USE store;

SHOW TABLES;

SELECT * FROM customers;

SELECT * FROM customers WHERE state = "FL" OR state ="VA" OR state = "GA";

SELECT * FROM customers WHERE state IN("FL", "VA", "GA");

SELECT * FROM products WHERE quantity_in_stock IN(49, 38, 72);

/*

Order of logical operators:

- NOT
- AND
- OR

*/

-- customers have points in the range of 3000 and 10000 (range: points starting from 3000 and ending at 10000) 

SELECT * FROM customers;

SELECT * FROM customers WHERE points BETWEEN 3000 AND 10000;

SELECT * FROM customers WHERE birth_date BETWEEN "1990-1-1" AND "2000-1-1";

SELECT * FROM customers WHERE last_name LIKE "MacCaffrey";

SELECT * FROM customers WHERE last_name LIKE "b%";

SELECT * FROM customers WHERE address LIKE "%TRAIL%" OR "%AVENUE%";

SELECT * FROM customers WHERE phone LIKE "9%";

SELECT * FROM customers WHERE phone NOT LIKE "9%";

SELECT * FROM customers WHERE last_name LIKE "_____y";

-- last_names ending with y and having 6 letters

-- laast_names starting with b, ending with y and having 6 letters

SELECT * FROM customers WHERE last_name LIKE "b____y";

SELECT * FROM customers WHERE last_name LIKE "b%y";

SELECT * FROM customers WHERE last_name REGEXP 'age';

SELECT * FROM customers WHERE last_name REGEXP '^Mac';

SELECT * FROM customers WHERE last_name REGEXP 'field$';

SELECT * FROM customers WHERE last_name REGEXP '^Mac|field$|rose';

/*

^ - starts with
$ - ends with
| - logical OR
[.] - set

*/

SELECT * FROM customers WHERE last_name REGEXP '[bc]e';

SELECT * FROM customers WHERE last_name REGEXP 'ff|qf|cf';

USE exercise_hr;

SELECT * FROM employees WHERE first_name REGEXP 'b|c';

SELECT * FROM employees WHERE first_name REGEXP 'b&c';

SELECT * FROM employees WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';

SELECT * FROM employees WHERE first_name REGEXP 'b&&c';

SELECT * FROM employees WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

SELECT * FROM employees WHERE last_name LIKE "______";

SELECT * FROM employees WHERE last_name LIKE "__e";

SHOW TABLES;

USE store;

SHOW TABLES;

SELECT * FROM orders;

SELECT * FROM orders WHERE shipper_id IS NOT NULL;

SELECT * FROM orders WHERE NOT shipper_id IS NULL;

SELECT * FROM orders WHERE status = 2;

-- show first 3 rows

SELECT * FROM orders WHERE NOT shipper_id IS NULL LIMIT 3;

-- show rows 2 to 4 

SELECT * FROM orders WHERE NOT shipper_id IS NULL LIMIT 1,3;

-- find last 5 customers

SELECT * FROM customers LIMIT 5,5;

EXPLAIN SELECT * FROM customers ORDER BY points DESC LIMIT 3;

USE exercise_hr;

EXPLAIN SELECT * FROM employees WHERE employee_id = '142';


USE exercise_hr;

SELECT * FROM employees;

-- find employees names of all the employees working in the 'IT' department
SELECT employee_id, first_name, last_name, e.department_id, d.department_name 
FROM employees AS e 
INNER JOIN departments AS d ON e.department_id = d.department_id where d.department_name="IT";

SELECT employee_id, first_name, department_id FROM employees WHERE department_id = 60;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM locations;

-- joins

SELECT * FROM employees INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID;

SELECT employee_id, first_name, e.department_id, d.department_id, d.department_name 
FROM employees AS e 
INNER JOIN departments AS d 
ON e.department_id = d.department_id;


SELECT first_name, last_name, e.department_id FROM employees AS e inner JOIN departments AS d ON e.department_id = d.department_id;

SELECT first_name, last_name,  e.department_id, l.city FROM employees As e INNER JOIN locations AS l INNER JOIN departments AS d ON e.department_id = d.department_id WHERE d.department_id = 40 AND l.location_id = 2400;
























 