-- RIGHT JOIN Examples - Standard SQL Version
-- ==========================================

-- 1. RIGHT JOIN: customers (left) and employees (right)
-- Find all employees and the customers they are in charge of.
SELECT 
    e.employeeNumber, 
    c.customerNumber
FROM
    customers AS c
RIGHT JOIN employees AS e 
    ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY 
    e.employeeNumber;

-- 2. RIGHT JOIN with unmatched rows:
-- Find employees who are NOT in charge of any customers
SELECT 
    e.employeeNumber, 
    c.customerNumber
FROM
    customers AS c
RIGHT JOIN employees AS e 
    ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE 
    c.customerNumber IS NULL
ORDER BY 
    e.employeeNumber;

-- =========================================
-- End of RIGHT JOIN examples
