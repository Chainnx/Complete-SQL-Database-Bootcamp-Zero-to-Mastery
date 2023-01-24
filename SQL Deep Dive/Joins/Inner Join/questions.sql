
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT b.*, a.state
FROM customers as a
INNER JOIN orders as b ON a.customerid = b.customerid
WHERE a.state = 'OH' OR a.state ='NY' OR a.state ='OR'
ORDER BY a.customerid ASC;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT b.*, a.price, a.actor
FROM products as a
INNER JOIN inventory as b 
ON a.prod_id = b.prod_id
ORDER BY a.prod_id ASC;


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT a.emp_no, CONCAT(a.first_name, a.last_name) AS "FULL NAME", b.dept_no, c.dept_name
FROM employees AS a
INNER JOIN dept_emp as b ON a.emp_no = b.emp_no
INNER JOIN departments as c ON b.dept_no = c.dept_no
ORDER BY a.emp_no ASC;



