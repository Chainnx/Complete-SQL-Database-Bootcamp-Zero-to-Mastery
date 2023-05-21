/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT * from employees
ORDER By first_name asc, last_name desc

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT * from employees
ORDER By age(birth_date) desc

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT * from employees
WHERE first_name ILIKE 'K%'
ORDER By hire_date
