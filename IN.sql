-- =============================================
-- 🟢 MySQL IN Operator Examples
-- =============================================

-- Sample table: offices
-- Columns: officeCode, city, phone, country

-- ✅ Example 1: Using IN to match multiple values
SELECT 
    officeCode, 
    city, 
    phone, 
    country
FROM
    offices
WHERE
    country IN ('USA', 'France');

-- This returns:
-- +------------+---------------+-----------------+---------+
-- | officeCode | city          | phone           | country |
-- +------------+---------------+-----------------+---------+
-- | 1          | San Francisco | +1 650 219 4782 | USA     |
-- | 2          | Boston        | +1 215 837 0825 | USA     |
-- | 3          | NYC           | +1 212 555 3000 | USA     |
-- | 4          | Paris         | +33 14 723 4404 | France  |
-- +------------+---------------+-----------------+---------+

-- ✅ Example 2: Same result using OR (less readable with more values)
SELECT 
    officeCode, 
    city, 
    phone
FROM
    offices
WHERE
    country = 'USA' OR country = 'France';

-- 🧠 Summary:
-- - Use IN to check if a column value matches any value in a list
-- - IN is cleaner and more readable than multiple ORs
-- - Especially useful when checking against many values

-- ✅ Use Case Tip:
-- WHERE column_name IN ('value1', 'value2', ..., 'valueN');
