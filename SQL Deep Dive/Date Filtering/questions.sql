/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/


SELECT * from employees
WHERE extract (YEAR FROM AGE(birth_date)) > 60

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(*) from employees
WHERE extract (month FROM hire_date) = 2

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT * from employees
WHERE extract (month FROM birth_date) = 11

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT max(age(birth_date)) from employees


/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/


SELECT count(*) from orders
WHERE EXTRACT(MONTH FROM orderdate) = 1 AND EXTRACT(YEAR FROM orderdate) = 2004

WHERE orderdate BETWEEN date '2004-01-01' AND date '2004-01-31'

