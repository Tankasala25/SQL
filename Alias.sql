-- Aliases in MySQL
-- -----------------------------
-- Column aliases:
-- A column alias is used to give a column in the result set a temporary name.
-- Syntax: column_name AS alias_name
-- You can use aliases to make output more readable.

-- Example 1: Using column alias with AS
SELECT 
    CONCAT_WS(', ', lastName, firstName) AS 'Full name'
FROM  employees;

-- Example 2: Using alias without AS (AS is optional)
SELECT 
    CONCAT_WS(', ', lastName, firstName) 'Full name'
FROM 
    employees
ORDER BY 
    'Full name';

-- Example 3: Alias in GROUP BY and HAVING (cannot use in WHERE)
SELECT
    orderNumber AS [Order no.],
    SUM(priceEach * quantityOrdered) AS Total
FROM
    orderdetails
GROUP BY
    orderNumber
HAVING
    SUM(priceEach * quantityOrdered) > 50000;





-- Note:
-- You cannot use column aliases in WHERE clause because WHERE is evaluated before SELECT.

-- -----------------------------
-- Table aliases:
-- A table alias gives a table a temporary name for use in a query.
-- Syntax: table_name AS alias_name (AS is optional)

-- Example 1: Using table alias
SELECT 
    e.firstName, 
    e.lastName
FROM 
    employees AS e
ORDER BY 
    e.firstName;

-- Example 2: Table alias in JOIN to avoid ambiguity
SELECT
    customerName,
    COUNT(o.orderNumber) AS total
FROM
    customers c
INNER JOIN orders o 
    ON c.customerNumber = o.customerNumber
GROUP BY
    customerName
ORDER BY
    total DESC;

-- Without alias (longer, but same logic)
SELECT
    customers.customerName,
    COUNT(orders.orderNumber) AS total
FROM
    customers
INNER JOIN orders 
    ON customers.customerNumber = orders.customerNumber
GROUP BY
    customers.customerName
ORDER BY
    total DESC;

-- -----------------------------
-- Summary:
-- - Use column aliases for more readable output or expressions.
-- - Use table aliases to shorten table names and disambiguate joins.
