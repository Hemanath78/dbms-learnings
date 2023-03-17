/*
Write a query to get the total salaries payable to employees.
Write a query to get the maximum and minimum salary from employees table.
Write a query to get the average salary and number of employees in the employees table.
Write a query to get the number of employees working with the company.
Write a query to get the number of distinct jobs available in the employees table.
Write a query get all first name from employees table in upper case.
Write a query to get the first 3 characters of first name from employees table.
Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.
Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
Write a query to get monthly salary (round 2 decimal places) of each and every employee

*/

USE exercise_hr;

SELECT * FROM employees;

SELECT SUM(SALARY) FROM employees;

SELECT MIN(SALARY) AS lowsalary FROM employees;

SELECT MAX(SALARY) AS highsalary FROM employees;

SELECT AVG(SALARY) FROM employees;

SELECT COUNT(EMPLOYEE_ID) as no_employees
FROM employees;

SELECT DISTINCT JOB_ID FROM employees;

SELECT UPPER(FIRST_NAME) AS UppercaseFirstName
FROM employees;

SELECT SUBSTRING(FIRST_NAME, 1, 3) AS extractname
FROM employees;

SELECT CONCAT(FIRST_NAME, " " , LAST_NAME)
AS EmployeeName FROM employees;

SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS full_name,
    LENGTH(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS len
FROM
    employees;
    
SELECT round(SALARY) AS salaryround FROM employees;




