--Introduction to MySQL DISTINCT clause

--from- > where -> select-> distinct -> order by

--First, select the last names from the employees table using the following SELECT statement:



SELECT 
    lastname
FROM
    employees
ORDER BY 
    lastname;

--Second, select unique last names by adding the DISTINCT clause like this:

SELECT 
    DISTINCT lastname
FROM
    employees
ORDER BY 
    lastname;

--MySQL DISTINCT and NULL values

SELECT DISTINCT state
FROM customers;

/*
MySQL DISTINCT with multiple columns
When you specify multiple columns in the DISTINCT clause, the DISTINCT clause will use the combination of values in these columns to determine the uniqueness of the row in the result set.

For example, to get a unique combination of city and state from the customers table, you use the following query:*/

SELECT DISTINCT
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY 
    state, 
    city;

--Without the DISTINCT clause, you will get the duplicate combination of state and city as follows:

SELECT 
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY 
    state , 
    city;