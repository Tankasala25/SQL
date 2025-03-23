-- =============================================
-- 🔵 MySQL BETWEEN and NOT BETWEEN Examples
-- =============================================

-- =============================================
-- 1) BETWEEN with Numeric Values
-- =============================================

-- Get products where buyPrice is between 90 and 100 (inclusive)
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice BETWEEN 90 AND 100;

-- Equivalent using >= and <= operators
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice >= 90 AND buyPrice <= 100;


-- =============================================
-- 2) NOT BETWEEN with Numeric Values
-- =============================================

-- Get products where buyPrice is NOT between 20 and 100
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice NOT BETWEEN 20 AND 100;

-- Equivalent using OR with < and >
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice < 20 OR buyPrice > 100;


-- =============================================
-- 3) BETWEEN with Date Values
-- =============================================

-- Get orders with requiredDate between Jan 1 and Jan 31, 2003
-- Use CAST to safely convert string to DATE
SELECT 
    orderNumber,
    requiredDate,
    status
FROM 
    orders
WHERE 
    requiredDate BETWEEN 
        CAST('2003-01-01' AS DATE) AND 
        CAST('2003-01-31' AS DATE);

-- ✅ Note:
-- BETWEEN includes both boundary values
-- This means it includes orders with requiredDate = '2003-01-01' and '2003-01-31'

-- =============================================
-- 🧠 Summary:
-- =============================================
-- - Use BETWEEN to test if a value falls within a range (inclusive)
-- - Use NOT BETWEEN to exclude values in a range
-- - Works with numbers, dates, and strings
-- - Prefer CAST() for comparing string literals with DATE fields
