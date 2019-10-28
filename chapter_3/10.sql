SELECT
  EmployeeName
FROM
  Employees
EXCEPT
SELECT
  e.EmployeeName
FROM
  Sales AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
;

SELECT
  CustomerID AS ID
, CustomerName AS 名前
FROM
  Customers
EXCEPT
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
EXCEPT
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
EXCEPT
SELECT
  ProductID
FROM
  Sales
ORDER BY
  ProductID
;


SELECT
  A.ProductID
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  Quantity >= 100
  AND
  B.CutomerClassID = 1
EXCEPT
SELECT
  A.ProductID
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  Quantity >= 10
  AND
  B.CutomerClassID = 2
ORDER BY
  ProductID
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
EXCEPT
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
