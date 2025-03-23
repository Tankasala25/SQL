-- =============================================
-- 🔴 MySQL NOT IN Operator Example
-- =============================================

-- Sample table: offices
-- Columns: officeCode, city, phone, country

-- ✅ Example: Find offices NOT located in 'USA' or 'France'
SELECT 
    officeCode, 
    city, 
    phone
FROM
    offices
WHERE
    country NOT IN ('USA', 'France')
ORDER BY 
    city;

-- This returns:
-- +------------+--------+------------------+
-- | officeCode | city   | phone            |
-- +------------+--------+------------------+
-- | 7          | London | +44 20 7877 2041 |
-- | 6          | Sydney | +61 2 9264 2451  |
-- | 5          | Tokyo  | +81 33 224 5000  |
-- +------------+--------+------------------+

-- ✅ Summary:
-- - Use NOT IN to exclude specific values from your query
-- - Cleaner than writing multiple NOT EQUAL conditions (e.g., country <> 'USA' AND country <> 'France')
-- - Useful when filtering out unwanted data from a list

-- ✅ Syntax:
-- WHERE column_name NOT IN ('value1', 'value2', ..., 'valueN');
