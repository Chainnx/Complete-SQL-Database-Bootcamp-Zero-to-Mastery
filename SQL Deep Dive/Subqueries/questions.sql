/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT o.*, c.state
FROM orders as o
INNER JOIN (SELECT customerid, state FROM customers
WHERE state IN('NY', 'OR', 'OH')
)as c ON c.customerid = o.customerid
ORDER BY orderid asc


/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
SELECT e.emp_no, e.first_name, d3.dept_no FROM employees as e
INNER JOIN (SELECT dep.dept_no,emp_no FROM employees as e
INNER JOIN dept_emp as d using(emp_no)
INNER JOIN departments as dep ON dep.dept_no = d.dept_no
GROUP BY dep.dept_no, emp_no
HAVING dep.dept_no = 'd003'
) as d3 USING(emp_no)
ORDER BY emp_no
