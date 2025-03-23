-- INNER JOIN: products + productlines
SELECT 
    p.productCode, 
    p.productName, 
    pl.textDescription
FROM
    products AS p
INNER JOIN 
    productlines AS pl 
    ON p.productLine = pl.productLine;

-- INNER JOIN with GROUP BY: orders + orderdetails
SELECT 
    o.orderNumber,
    o.status,
    SUM(od.quantityOrdered * od.priceEach) AS total
FROM
    orders AS o
INNER JOIN 
    orderdetails AS od 
    ON o.orderNumber = od.orderNumber
GROUP BY 
    o.orderNumber, o.status;

-- INNER JOIN of 3 tables: orders + orderdetails + products
SELECT 
    o.orderNumber,
    o.orderDate,
    od.orderLineNumber,
    p.productName,
    od.quantityOrdered,
    od.priceEach
FROM
    orders AS o
INNER JOIN 
    orderdetails AS od 
    ON o.orderNumber = od.orderNumber
INNER JOIN 
    products AS p 
    ON od.productCode = p.productCode
ORDER BY 
    o.orderNumber, 
    od.orderLineNumber;

-- INNER JOIN of 4 tables: orders + orderdetails + products + customers
SELECT 
    o.orderNumber,
    o.orderDate,
    c.customerName,
    od.orderLineNumber,
    p.productName,
    od.quantityOrdered,
    od.priceEach
FROM
    orders AS o
INNER JOIN 
    orderdetails AS od 
    ON o.orderNumber = od.orderNumber
INNER JOIN 
    products AS p 
    ON od.productCode = p.productCode
INNER JOIN 
    customers AS c 
    ON o.customerNumber = c.customerNumber
ORDER BY 
    o.orderNumber, 
    od.orderLineNumber;

-- INNER JOIN using comparison operator: MSRP > priceEach
SELECT 
    o.orderNumber, 
    p.productName, 
    p.msrp, 
    o.priceEach
FROM
    products AS p
INNER JOIN 
    orderdetails AS o 
    ON p.productCode = o.productCode
    AND p.msrp > o.priceEach
WHERE
    p.productCode = 'S10_1678';
