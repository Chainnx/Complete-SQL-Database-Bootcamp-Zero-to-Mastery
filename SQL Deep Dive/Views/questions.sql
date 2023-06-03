/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
SELECT * from employees
WHERE EXTRACT(YEAR FROM hire_date) BETWEEN 1990 AND 1995
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

CREATE VIEW "bigbucks" AS
SELECT e.emp_no, e.first_name, max(salary) as "salary" from employees as e
INNER JOIN salaries as s ON e.emp_no = s.emp_no
WHERE salary > 80000
GROUP BY e.emp_no, e.first_name
ORDER BY e.emp_no
-- ...
