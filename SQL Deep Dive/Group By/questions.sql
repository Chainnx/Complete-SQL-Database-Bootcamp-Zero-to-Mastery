/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, count(hire_date)from employees
GROUP BY hire_date
ORDER BY hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, CONCAT(e.first_name,' ', e.last_name) AS fullName, count(t.title) as "Number of Positions"
from employees as e
INNER JOIN titles as t ON e.emp_no = t.emp_no
AND extract (YEaR FROM hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.*,de.from_date, de.to_date , depm.dept_name
from employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
INNER JOIN departments as depm ON de.dept_no = depm.dept_no
AND dept_name = 'Development'

