SELECT
  e.EmployeeName AS 氏名
, s.SaleDate AS 日付
FROM
  Sales AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
INTERSECT
SELECT
  e.EmployeeName AS 氏名
, s.PayDate AS 日付
FROM
  Salary AS s
    JOIN
  Employee AS e
    ON s.EmployeeID = e.EmployeeID
;


SELECT
  EmployeeID AS ID
, EmployeeName AS 名前
FROM
  Employees
INTERSECT
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
INTERSECT
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
  Quantity >= 10
  AND
  SaleDate BETWEEN '2006-10-01' AND '2006-12-31'
INTERSECT
SELECT
  CustomerID
, ProductID
FROM
  Sales
WHERE
  Quantity >= 10
  AND
  SaleDate BETWEEN '2007-01-01' AND '2007-03-31'
INTERSECT
SELECT
  CustomerID
, ProductID
FROM
  Sales
WHERE
  Quantity >= 10
  AND
  SaleDate BETWEEN '2007-04-01' AND '2007-06-30'
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
  B.CustomerClassID = 2
  AND
  A.Quantity >= 10
INTERSECT
SELECT
  A.ProductID
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  B.CustomerClassID = 1
  AND
  A.Quantity >= 100
ORDER BY
  ProductID
;
