SELECT
  EmployeeName AS 指名
FROM
  Employee
WHERE
  Height >= 180
;

SELECT
  ProductName
FROM
  Products
WHERE
  Price >= 2500
;

SELECT
  EmployeeName
, Weight
FROM
  Employees
WHERE
  Weight >= 70
;

SELECT
  EmployeeName
, Height
FROM
  Employee
WHERE
  Height BETWEEN 160 AND 180
;

SELECT
  SaleID
FROM
  Sales
WHERE
  SalesDate >= 2007-06-01
;

SELECT
  EmployeeName
, Height
, Weight
FROM
  Employees
WHERE
  Height >= 170
  AND Weight >= 60
;
