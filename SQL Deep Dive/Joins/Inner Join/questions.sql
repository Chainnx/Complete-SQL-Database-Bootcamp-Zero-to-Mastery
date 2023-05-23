
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT a.customerid, a.*, b.state from orders as a
INNER JOIN customers as b ON a.customerid = b.customerid
AND state IN ('OR', 'NY', 'OH')
order BY a.customerid



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT a.*, b.quan_in_stock from products as a
inner JOIN inventory as b ON a.prod_id = b.prod_id


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT a.*, b.dept_no from employees as a
INNER JOIN dept_emp as b ON a.emp_no = b.emp_no
ORDER BY a.emp_no



