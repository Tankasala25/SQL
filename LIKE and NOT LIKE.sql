-- =============================================
-- 🟢 MySQL LIKE and NOT LIKE Operator Examples
-- =============================================

-- Sample table: employees
-- Columns: employeeNumber, firstName, lastName

-- =============================================
-- 1) LIKE with % (percent sign) wildcard
-- =============================================

-- Find employees whose first names start with the letter 'a'
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstName LIKE 'a%';  -- starts with 'a'

-- Find employees whose last names end with 'on' (e.g., Patterson, Thompson)
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName LIKE '%on';  -- ends with 'on'

-- Find employees whose last names contain 'on' anywhere
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName LIKE '%on%';  -- contains 'on'

-- =============================================
-- 2) LIKE with _ (underscore) wildcard
-- =============================================

-- Find employees whose first name:
-- - starts with 'T'
-- - ends with 'm'
-- - has any one character in between (e.g., Tom, Tim)
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    firstName LIKE 'T_m';  -- T followed by any 1 char, ending in m

-- =============================================
-- 3) NOT LIKE usage
-- =============================================

-- Find employees whose last names DO NOT start with 'B'
SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName NOT LIKE 'B%';  -- does not start with 'B'

-- LIKE is not case-sensitive by default in MySQL

-- =============================================
-- 4) LIKE with ESCAPE clause
-- =============================================

-- Sample table: products
-- Columns: productCode, productName

-- Same query using custom escape character ($)
SELECT 
    productCode, 
    productName
FROM
    products
WHERE
    productCode LIKE '%$_20%' ESCAPE '$';  -- $ escapes the underscore

-- =============================================
-- 🧠 Summary:
-- =============================================
-- - LIKE is used for pattern matching with strings.
-- - % wildcard → matches zero or more characters.
-- - _ wildcard → matches exactly one character.
-- - ESCAPE clause → use when your pattern includes % or _ as literals.
-- - Use NOT LIKE to exclude patterns.


