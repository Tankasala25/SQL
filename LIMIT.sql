-- =============================================
-- 🟦 SQL Server Equivalent to MySQL LIMIT Clause
-- =============================================

-- ✅ 1) TOP N Rows (similar to LIMIT row_count)

-- Get top 5 customers with highest credit
SELECT TOP 5 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC;

-- Get top 5 customers with lowest credit
SELECT TOP 5 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit ASC;

-- Add extra column to ensure consistent ordering
SELECT TOP 5 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY 
    creditLimit ASC, 
    customerNumber ASC;

-- =============================================
-- 🟦 2) Pagination using OFFSET FETCH
-- =============================================

-- Total number of rows
SELECT COUNT(*) AS TotalCustomers FROM customers;

-- Page 1: Get first 10 rows
SELECT 
    customerNumber, 
    customerName
FROM
    customers
ORDER BY customerName
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Page 2: Get rows 11–20
SELECT 
    customerNumber, 
    customerName
FROM
    customers
ORDER BY customerName
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

-- Page 3: Get rows 21–30
SELECT 
    customerNumber, 
    customerName
FROM
    customers
ORDER BY customerName
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;

-- =============================================
-- 🟦 3) Get Nth Highest Row Using OFFSET FETCH
-- =============================================

-- Get 2nd highest credit customer
-- OFFSET 1 ROWS FETCH NEXT 1 ROW ONLY → row at position 2
SELECT 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC
OFFSET 1 ROWS FETCH NEXT 1 ROW ONLY;

-- View all for verification
SELECT 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC;

-- =============================================
-- 🟦 4) SELECT DISTINCT with OFFSET FETCH
-- =============================================

-- Get first 5 unique (non-null) states
-- NOTE: OFFSET requires ORDER BY
SELECT DISTINCT state
FROM customers
WHERE state IS NOT NULL
ORDER BY state
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

-- =============================================
-- 🧠 Summary for SQL Server
-- =============================================
-- - Use TOP N → to limit rows directly
-- - Use OFFSET ... FETCH NEXT → for paging or nth row
-- - Always use ORDER BY for consistent results
-- - OFFSET is 0-based (first row = OFFSET 0)
-- - DISTINCT with OFFSET requires ORDER BY
