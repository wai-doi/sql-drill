SELECT
  AVG(Price) AS 平均単価
FROM
  Products
;

SELECT
  COUNT(*) AS お得意様数
FROM
  Customers
;

SELECT
  SUM(Weight) AS 社員体重合計
FROM
  Employees
;

SELECT
  MAX(Price) AS 最高額価格
FROM
  Products
;

SELECT
  MIN(Weight) AS 最軽量体重
FROM
  Employees
;

SELECT
  AVG(Height) AS 平均身長
, AVG(Weight) AS 平均体重
FROM
  Employees
;
