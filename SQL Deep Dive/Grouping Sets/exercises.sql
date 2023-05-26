/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT de.dept_no as "departments",COUNT(e.emp_no)
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
GROUP BY
    GROUPING SETS(
        (),
        (de.dept_no)
    )
ORDER BY dept_no

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT de.dept_no, avg(s.salary)
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
INNER JOIN salaries as s ON e.emp_no = s.emp_no
GROUP BY 
    GROUPING SETS (
        (),
        (de.dept_no)
    )
ORDER BY dept_no

