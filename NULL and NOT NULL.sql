-- =============================================
-- 🟦 SQL Server: IS NULL and IS NOT NULL Examples
-- =============================================

-- Sample table: customers
-- Columns: customerName, country, salesRepEmployeeNumber

-- =============================================
-- 1) Find customers with NO sales representative (NULL values)
-- =============================================

SELECT 
    customerName, 
    country, 
    salesRepEmployeeNumber
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NULL
ORDER BY 
    customerName;

-- ✅ Explanation:
-- - IS NULL checks if a column contains a NULL value.
-- - This returns customers who do NOT have an assigned sales rep.

-- =============================================
-- 2) Find customers WITH a sales representative (NOT NULL values)
-- =============================================

SELECT 
    customerName, 
    country, 
    salesRepEmployeeNumber
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NOT NULL
ORDER BY 
    customerName;

-- ✅ Explanation:
-- - IS NOT NULL checks for values that are NOT NULL.
-- - This returns customers who have a sales rep assigned.

-- =============================================
-- 🧠 Summary:
-- =============================================
-- - Use IS NULL to find records where the column has no value.
-- - Use IS NOT NULL to find records where the column has a value.
-- - NULL represents missing or unknown data — not zero or blank.
-- - Always use IS NULL or IS NOT NULL (not = NULL or <> NULL).
