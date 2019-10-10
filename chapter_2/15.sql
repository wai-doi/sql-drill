SELECT
  ProductName
FROM
  Products
ORDER BY
  Price
;

SELECT
  EmployeeID
, EmployeeName
, BirthDay
FROM
  Employees
ORDER BY
  BirthDay
;

SELECT
  SaleID
, Quantity
, CustomerID
, ProductID
, SaleDate
FROM
  Seles
ORDER BY
  CustomerID
, ProductID
, SaleDate DESC
;

SELECT
  CategoryID
, COUNT(*) AS 商品数
FROM
  Products
WHERE
  Price <= 1000
GROUP BY
  CategoryID
HAVING
  COUNT(*) < 5
ORDER BY
  CategoryID
;

SELECT
  EmployeeID AS 社員ID
, SUM(Amount) AS 給与合計
FROM
  Salary
GROUP BY
  EmployeeID
ORDER BY
  SUM(Amount) DESC
;

SELECT
  DepartmentID AS 部署ID
, COUNT(*) AS レコード数
FROM
  BelongTo
WHERE
  EndDate IS NULL
GROUP BY
  DepartmentID
ORDER BY
  COUNT(*)
;
