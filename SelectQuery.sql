--1.Using the SELECT FROM statement to retrieve data from a single column example

select lastName from employees;


--2) Using the SELECT FROM statement to query data from multiple columns example

select lastName, firstName, jobTitle from dbo.employees;

/*Summary
Use the SELECT FROM statement to select data from a table.
Use the SELECT * to select data from all columns of a table.*/

--The following example uses the SELECT statement to perform a simple calculation:

select 1+1

--For example, the following statement uses the GETDATE() function in the SELECT statement to return the current date and time of the server where MySQL server is running:

SELECT GETDATE();

--The CONCAT() function accepts one or more strings and concatenates them into a single string.

SELECT CONCAT('Hello',' ','World');

/*By default, MySQL uses the expression specified in the SELECT clause as the column name of the result set. To change a column name of the 
result set, you can use a column alias:*/

SELECT CONCAT('Hello',' ','World') as FullName;

--If the column alias contains spaces, you need to place it inside quotes like this:

SELECT CONCAT('Hello',' ','World') as 'Full Name';

