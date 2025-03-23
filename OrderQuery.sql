--1) Using ORDER BY clause to sort the result set by one column example

SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname;

  --order-> from -> select -> order By

 /* If you want to sort customers by the last name in descending order, 
 you use the DESC after the contactLastname column in the ORDER BY clause as shown in the following query:*/

 SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname desc;

  --2) Using the ORDER BY clause to sort the result set by multiple columns example

  SELECT 
  contactLastname, 
  contactFirstname 
FROM 
  customers 
ORDER BY 
  contactLastname desc,
  contactFirstName asc;

  --3) Using the ORDER BY clause to sort a result set by an expression example

  SELECT 
  orderNumber, 
  orderlinenumber, 
  quantityOrdered * priceEach as total
FROM 
  orderdetails 
ORDER BY 
  total DESC;

--Using MySQL ORDER BY clause to sort data using a custom list

--The FIELD() function returns the index (position) of a value within a list of values.

-- Works if you're searching inside a string
SELECT 
  CHARINDEX(',A,', ',A,B,C,');  -- Returns position (but it's string-based)


  --MySQL ORDER BY and NULL

  --In MySQL, NULL comes before non-NULL values. Therefore, when you the ORDER BY clause with the ASC option, NULLs appear first in the result set.

  SELECT 
  firstName, 
  lastName, 
  reportsTo 
FROM 
  employees 
ORDER BY 
  reportsTo;

  --However, if you use the ORDER BY with the DESC option, NULLs will appear last in the result set. For example:

  SELECT 
  firstName, 
  lastName, 
  reportsTo 
FROM 
  employees 
ORDER BY 
  reportsTo DESC;
