SELECT
  CustomerName AS 氏名
FROM
  Customers
UNION
SELECT
  EmployeeName AS 氏名
FROM
  Employees
;

SELECT
  CustomerID AS ID
, CustomerName AS 名前
FROM
  Customers
UNION
SELECT
  EmployeeID AS ID
, EmployeeName AS 名前
FROM
  Employees
ORDER BY
  ID
;

SELECT
  EmployeeID AS ID
, EmployeeName AS 名前
FROM
  Employees
UNION
SELECT
  EmployeeID AS ID
, EmployeeName AS 名前
FROM
  Employees
ORDER BY
  ID
;

SELECT
  ProductID
FROM
  Products
UNION
SELECT
  ProductID
FROM
  Sales
ORDER BY
  ProductID
;

SELECT
  CustomerID
, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2006-10-01' AND '2006-12-31'
  AND
  Quantity >= 10
UNION
SELECT
  CustomerID
, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-01-01' AND '2007-03-31'
  AND
  Quantity >= 10
UNION
SELECT
  CustomerID
, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-04-01' AND '2007-06-30'
  AND
  Quantity >= 10
ORDER BY
  CustomerID, ProductID
;

SELECT
  A.ProductID
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  A.Quantity >= 10
  AND
  B.CustomerClassID = 2
UNION
SELECT
  A.ProductID
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  A.Quantity >= 100
  AND
  B.CustomerClassID = 1
ORDER BY
  ProductID
;
