-- LEFT JOIN Examples - Standard SQL Version
-- =========================================

-- 1. LEFT JOIN two tables: customers and orders
SELECT 
    customers.customerNumber, 
    customers.customerName, 
    orders.orderNumber, 
    orders.status
FROM
    customers
LEFT JOIN orders 
    ON orders.customerNumber = customers.customerNumber;

-- 1a. Same query with table aliases
SELECT
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.status
FROM
    customers AS c
LEFT JOIN orders AS o 
    ON c.customerNumber = o.customerNumber;

-- 2. Find customers without any orders
SELECT 
    c.customerNumber, 
    c.customerName, 
    o.orderNumber, 
    o.status
FROM
    customers AS c
LEFT JOIN orders AS o 
    ON c.customerNumber = o.customerNumber
WHERE
    o.orderNumber IS NULL;

-- 3. LEFT JOIN with 3 tables: employees, customers, payments
SELECT 
    e.lastName, 
    e.firstName, 
    c.customerName, 
    p.checkNumber, 
    p.amount
FROM
    employees AS e
LEFT JOIN customers AS c 
    ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p 
    ON c.customerNumber = p.customerNumber
ORDER BY 
    c.customerName, 
    p.checkNumber;

-- 4. LEFT JOIN with WHERE clause filter (order 10123)
SELECT 
    o.orderNumber, 
    o.customerNumber, 
    od.productCode
FROM
    orders AS o
LEFT JOIN orderDetails AS od 
    ON o.orderNumber = od.orderNumber
WHERE
    o.orderNumber = 10123;

-- 5. LEFT JOIN with ON clause filter (order 10123)
SELECT 
    o.orderNumber, 
    o.customerNumber, 
    od.productCode
FROM
    orders AS o
LEFT JOIN orderDetails AS od 
    ON o.orderNumber = od.orderNumber 
    AND o.orderNumber = 10123;

-- =========================================
-- End of LEFT JOIN examples
