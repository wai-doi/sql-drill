SELECT
  PrefecturalID AS 都道府県
, COUNT(*) AS 顧客数
FROM
  Customers
GROUP BY
  PrefecturalID
;

SELECT
  CustomerID AS 顧客ID
, COUNT (*) AS 件数
FROM
  Sales
GROUP BY
  CustomerID
;

SELECT
  EmployeeID AS 社員ID
, SUM(amount) AS 合計
FROM
  Salary
GROUP BY
  EmployeeID
;

SELECT
  CustomerID AS 顧客ID
, ProductID AS 商品ID
, SUM(Quantity) AS 数量
FROM
  Sales
GROUP BY
  CustomerID
, ProductID
;

SELECT
  BloodType AS 血液型
, AVG(Height) AS 平均身長
, AVG(Weight) AS 平均体重
FROM
  Employees
GROUP BY
  BloodType
;

SELECT
  EmployeeID AS 社員ID
, COUNT(*) AS 支給回数
, AVG(Amount) AS 平均支給額
FROM
  Salary
GROUP BY
  EmployeeID
;
