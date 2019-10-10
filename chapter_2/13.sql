SELECT
  PrefectureID AS 都道府県
, COUNT(*) AS 顧客数
FROM
  Customers
WHERE
  CustomerClassID = 1
GROUP BY
  PrefectureID
HAVING
  COUNT(*) >= 2
;

SELECT
  PrefectureID AS 県ID
, COUNT(*) AS 顧客数
FROM
  Customers
WHERE
  PrefectureID >= 10
GROUP BY
  PrefectureID
HAVING
  COUNT(*) > 1
;

SELECT
  EmployeeID AS 社員ID
, COUNT(*) AS 支給回数
FROM
  Salary
WHERE
  EmployeeID >= 20
GROUP BY
  EmployeeID
HAVING
  COUNT(*) >= 12
;

SELECT
  ProductID AS 商品ID
, COUNT(*) AS 売上レコード数
FROM
  Sales
WHERE
  ProductID >= 20 AND ProductID <= 30
GROUP BY
  ProductID
HAVING
  COUNT(*) >= 30
;

SELECT
  BloodType AS 血液型
, COUNT(*) AS データ件数
FROM
  Employees
WHERE
  Height >= 165
GROUP BY
  BloodType
HAVING
  COUNT(*) >= 5
;

SELECT
  ProductID AS 商品ID
, SUM(Quantity) AS 数量合計
FROM
  Sales
WHERE
  SaleDate >= 2007-06-01
GROUP BY
  ProductID
HAVING
  SUM(Quantity) >= 200
;
