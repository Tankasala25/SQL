--Introduction to MySQL AND operator

/*
The AND operator is a logical operator that combines two or more Boolean expressions and returns 1, 0, or NULL:

A AND B
In this expression, A and B are called operands. They can be literal values or expressions.

The logical AND operator returns 1 if both A and B are non-zero and not NULL. It returns 0 if either operand is zero; otherwise, it returns NULL.

The logical AND operator returns 1 if both A and B are non-zero and NOT NULL. For example:*/

/*
The following table illustrates the results of the AND operator when combining true, false, and null.

        TRUE	FALSE	NULL
TRUE	TRUE	FALSE	NULL
FALSE	FALSE	FALSE	FALSE
NULL	NULL	FALSE	NULL

*/

SELECT 
    customername, 
    country, 
    state
FROM
    customers
WHERE
    country = 'USA' AND 
    state = 'CA';
/*By using the AND operator, you can combine more than two Boolean expressions. 
For example, the following query returns the customers who are located in California, USA, and have a credit limit greater than 100K.*/
SELECT 
    customername, 
    country, 
    state, 
    creditlimit
FROM
    customers
WHERE
    country = 'USA' AND 
    state = 'CA' AND 
    creditlimit > 100000;