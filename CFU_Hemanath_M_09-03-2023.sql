USE exercise_hr;

SELECT first_name, last_name, e.department_id, d.department_name FROM employees AS e inner JOIN departments AS d ON e.department_id = d.department_id;

SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary' 
FROM employees 
NATURAL JOIN jobs;

SELECT employee_id, job_title, (end_date-start_date) Days 
FROM job_history 
NATURAL JOIN jobs 
WHERE department_id=90;






