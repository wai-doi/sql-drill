SELECT
  PrefectureID AS 都道府県
, COUNT(*) AS 顧客数
FROM
  Customers
GROUP BY
  PrefectureID
HAVING
  COUNT(*) >= 3
;

SELECT
  Employee AS 顧客ID
, COUNT(*) AS 支給回数
FROM
  Salary
GROUP BY
  EmployeeID
HAVING
  COUNT(*) < 12
;

SELECT
  PrefectureID AS 県ID
, COUNT(*) AS 顧客数
FROM
  Customers
GROUP BY
  PrefectureID
HAVING
  COUNT(*) > 1
;

SELECT
  ProductID AS 商品ID
, COUNT(*) AS 売上レコード数
FROM
  Sales
GROUP BY
  ProductID
HAVING
  COUNT(*) >= 10 AND COUNT(*) <= 50
;

SELECT
  BloodType AS 血液型
, COUNT(*) AS データ件数
FROM
  Eemployees
GROUP BY
  BloodType
HAVING
  COUNT(*) >= 10
;

SELECT
  ProductID AS 商品ID
, SUM(Quantity) AS 数量合計
FROM
  Sales
GROUP BY
  ProductID
HAVING
  SUM(Quantity) >= 100 AND SUM(Quantity) <= 200
;
