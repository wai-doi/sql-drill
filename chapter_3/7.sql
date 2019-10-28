SELECT
  CustomerName AS 氏名
FROM
  Customers
UNION ALL
SELECT
  EmployeeName AS 氏名
FROM
  Employees
;

SELECT
  DepartmentID AS ID
, DepartmentName AS 名前
FROM
  Departments
UNION ALL
SELECT
  CategoryID
FROM
  Categories
;

SELECT
  'Departments' AS テーブル名
, DepartmentID AS ID
, DepartmentName AS 名前
FROM
  Departments
UNION ALL
SELECT
  'Categories' AS テーブル名
, CategoryID AS ID
, CategoryName AS 名前
FROM
  Categories
ORDER BY
  テーブル名, ID
;

SELECT
  DepartmentID AS ID
, DepartmentName AS 名前
FROM
  Departments
UNION ALL
SELECT
  CustomerClassID AS ID
, CustomerClassName AS 名前
FROM
  CustomerClasses
UNION ALL
SELECT
  CategoryID AS ID
, CategoryName AS 名前
FROM
  Categories
UNION ALL
SELECT
  PrefecturalID AS ID
, PrefecturalName AS 名前
FROM
  Prefecturals
;

SELECT
  'Departments' AS テーブル名
, DepartmentID AS ID
, DepartmentName AS 名前
FROM
  Departments
UNION ALL
SELECT
  'CustomerClasses' AS テーブル名
, CustomerClassID AS ID
, CustomerClassName AS 名前
FROM
  CustomerClasses
UNION ALL
SELECT
  'Categories' AS テーブル名
, CategoryID AS ID
, CategoryName AS 名前
FROM
  Categories
UNION ALL
SELECT
  'Prefecturals' AS テーブル名
, PrefecturalID AS ID
, PrefecturalName AS 名前
FROM
  Prefecturals
ORDER BY
  テーブル名, ID
;

SELECT
  A.SaleID
, A.ProductID
, A.Quantity
, B.CustomerClassID
, B.CustomerName
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  CustomerClassID = 2
  AND
  Quantity >= 10
UNION ALL
SELECT
  A.SaleID
, A.ProductID
, A.Quantity
, B.CustomerClassID
, B.CustomerName
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
WHERE
  CustomerClassID = 1
  AND
  Quantity >= 100
;
