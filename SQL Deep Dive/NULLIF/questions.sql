/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT *, 
CASE 
    WHEN price > 20 THEN 'expensive'
    WHEN price BETWEEN 10 AND 20 THEN 'AVERAGE'
    WHEN price <= 10 THEN 'Cheap'
END as "price class",
NULLIF ("special", 0)
FROM products

