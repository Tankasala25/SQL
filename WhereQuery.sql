--The WHERE clause allows you to specify a search condition for the rows returned by a query. The following shows the syntax of the WHERE clause:

--from -> where -> select -> order By

--1) Using the WHERE clause with equality operator example

SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';

--2) Using the WHERE clause with the AND operator

SELECT 
    lastname, 
    firstname, 
    jobtitle,
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND 
    officeCode = 1;

--3) Using MySQL WHERE clause with OR operator

SELECT 
    lastName, 
    firstName, 
    jobTitle, 
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' OR 
    officeCode = 1;

--4) Using the WHERE clause with the BETWEEN operator example

SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode BETWEEN 1 AND 3
ORDER BY officeCode;

--Using the WHERE clause with the LIKE operator example

SELECT 
    firstName, 
    lastName
FROM
    employees
WHERE
    lastName LIKE '%son'
ORDER BY firstName;

--6) Using the WHERE clause with the IN operator example

SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode IN (1 , 2, 3)
ORDER BY 
    officeCode;


--7) Using MySQL WHERE clause with the IS NULL operator

SELECT 
    lastName, 
    firstName, 
    reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;

	--8) Using MySQL WHERE clause with comparison operators



/*
Operator	Description
=	       Equal to. You can use it with almost any data type.
<> or !=   Not equal to
<	       Less than. You typically use it with numeric and date/time data types.
>	       Greater than.
<=	       Less than or equal to
>=	       Greater than or equal to
*/

SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';

--The following query finds employees whose office code is greater than 5:

SELECT 
    lastname, 
    firstname, 
    officeCode
FROM
    employees
WHERE 
    officecode > 5;

--The following query returns employees with office code less than or equal to 4 (<=4):

SELECT 
    lastname, 
    firstname, 
    officeCode
FROM
    employees
WHERE 
    officecode <= 4;

	/*Summary
Use the WHERE clause to filter rows by a condition.
MySQL evaluates the WHERE clause after the FROM clause and before the SELECT and ORDER BY clauses.*/
