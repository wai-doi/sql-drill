SELECT
  ProductName AS 商品名
, CASE
    WHEN Price < 1000 THEN 'C'
    WHEN Price < 2000 THEN 'B'
    ELSE 'A'
  END AS ランク
FROM
  Products
;

SELECT
  EmployeeName AS 社員名
, CASE
    WHEN Height < 160 THEN 'A'
    WHEN Height < 170 THEN 'B'
    WHEN Height < 180 THEN 'C'
    ELSE 'D'
  END AS ランク
FROM
  Employees
;

SELECT
  SalaryID AS 給与ID
, CASE
    WHEN Amount < 150000 THEN 'D'
    WHEN Amount < 300000 THEN 'C'
    WHEN Amount < 500000 THEN 'B'
    ELSE 'A'
  END AS ランク
FROM
  Salary
;

SELECT
  EmployeeName AS 社員名
, CASE
    WHEN Weight < 60 THEN 'A'
    WHEN Weight < 70 THEN 'B'
    WHEN Weight < 80 THEN 'C'
    ELSE 'D'
  END AS ランク
FROM
  Employees
;

SELECT
  SaleID AS 販売ID
, CASE
    WHEN Quantity >= 10 THEN 'A'
    ELSE 'B'
  END AS ランク
FROM
  Sales
;

SELECT
  EmployeeName AS 社員名
, Height AS 身長
, CASE
    WHEN Height < 160 THEN 'A'
    WHEN Height < 170 THEN 'B'
    WHEN Height < 180 THEN 'C'
    ELSE 'D'
  END AS ランク
FROM
  Employees
;
