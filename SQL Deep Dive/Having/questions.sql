
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
SELECT e.emp_no,CONCAT(e.first_name, e.last_name) as "fullName", count(t.title) from employees as e
INNER JOIN titles as t ON e.emp_no = t.emp_no
WHERE EXTRACT (YEAR FROM hire_date) > 1991
GROUP BY e.emp_no, e.first_name
HAVING COUNT(t.title) > 1
ORDER BY e.emp_no


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no, count(s.salary) from employees as e
INNER JOIN dept_emp as d ON e.emp_no = d.emp_no
INNER JOIN salaries as s ON e.emp_no = s.emp_no
WHERE d.dept_no = 'd005'
GROUP BY e.emp_no
HAVING count(s.salary) > 15
order by e.emp_no


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT e.emp_no, COUNT(d.dept_no) from employees as e
INNER JOIN dept_emp as d ON e.emp_no = d.emp_no
GROUP BY e.emp_no
HAVING count(d.dept_no) > 1
order by e.emp_no

