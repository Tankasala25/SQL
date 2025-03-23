--Introduction to the MySQL OR operator

/*'
        TRUE	FALSE	NULL
TRUE	TRUE	TRUE	TRUE
FALSE	TRUE	FALSE	NULL
NULL	TRUE	NULL	NULL

*/

----The following query uses the OR operator in the WHERE clause to select all the customers located in the USA or France:

SELECT    
	customername, 
	country
FROM    
	customers
WHERE country = 'USA' OR 
      country = 'France';

--The following example uses the OR operator to select the customers who locate in the USA or France and have a credit limit greater than 100,000.
SELECT   
	customername, 
	country, 
	creditLimit
FROM   
	customers
WHERE(country = 'USA'
		OR country = 'France')
	  AND creditlimit > 100000;

	/*
	Notice that if you do not use the parentheses, 
	the query will return the customers who locate in the USA or the customers located in France with a credit limit greater than 100,000.
	*/
	SELECT    
    customername, 
    country, 
    creditLimit
FROM    
    customers
WHERE 
    country = 'USA'
    OR country = 'France'
    AND creditlimit > 100000;