SELECT
  HireFiscalYear AS 入社年度
, SUM(
    CASE
      WHEN BloodType = 'A' THEN 1
      ELSE 0
    END
  ) AS A型
, SUM(
    CASE
      WHEN BloodType = 'B' THEN 1
      ELSE 0
    END
  ) AS B型
, SUM(
    CASE
      WHEN BloodType = 'O' THEN 1
      ELSE 0
    END
  ) AS O型
, SUM(
    CASE
      WHEN BloodType = 'AB' THEN 1
      ELSE 0
    END
  ) AS AB型
FROM
  Employees
GROUP BY
  HireFiscalYear
;

SELECT
  HireFiscalYear AS 入社年度
, SUM(
    CASE
      WHEN Height <= 160 THEN 1
      ELSE 0
    END
  ) AS "160cm以下"
, SUM(
    CASE
      WHEN Height <= 170 THEN 1
      ELSE 0
    END
  ) AS "170cm以下"
, SUM(
    CASE
      WHEN Height <= 180 THEN 1
      ELSE 0
    END
  ) AS "180cm以下"
, SUM(
    CASE
      WHEN Height > 180 THEN 1
      ELSE 0
    END
  ) AS "180cm超"
FROM
  Employees
GROUP BY
  HireFiscalYear
;

SELECT
  ProductID AS 商品カテゴリ
, SUM(
    CASE
      WHEN Price < 100 THEN 1
      ELSE 0
    END
  ) AS "100円未満"
, SUM(
    CASE
      WHEN Price < 400 THEN 1
      ELSE 0
    END
  ) AS "400円未満"
, SUM(
    CASE
      WHEN Price < 1000 THEN 1
      ELSE 0
    END
  ) AS "1000円未満"
, SUM(
    CASE
      WHEN Price >= 1000 THEN 1
      ELSE 0
    END
  ) AS "1000円以上"
FROM
  Products
GROUP BY
  ProductID
;

SELECT
  CustomerID AS 顧客ID
, SUM(
    CASE
      WHEN MONTH(SaleDate) = 9 THEN 1
      ELSE 0
    END
  ) AS "9月"
, SUM(
    CASE
      WHEN MONTH(SaleDate) = 10 THEN 1
      ELSE 0
    END
  ) AS "10月"
, SUM(
    CASE
      WHEN MONTH(SaleDate) = 11 THEN 1
      ELSE 0
    END
  ) AS "11月"
FROM
  Sales
WHERE
  YEAR(SaleDate) = 2006
GROUP BY
  CustomerID
;

SELECT
  PrefectureID AS 都道府県ID
, SUM(
    CASE
      WHEN CustomerClassID = 1 THEN 1
      ELSE 0
    END
  ) AS 法人
, SUM(
    CASE
      WHEN CustomerClassID = 2 THEN 1
      ELSE 0
    END
  ) AS 個人
FROM
  Customers
GROUP BY
  PrefectureID
;

SELECT
  HireFiscalYear AS 入社年度
, SUM(
    CASE
      WHEN Weight <= 50 THEN 1
      ELSE 0
    END
  ) AS "50kg以下"
, SUM(
    CASE
      WHEN Weight <= 60 THEN 1
      ELSE 0
    END
  ) AS "51〜60kg以下"
, SUM(
    CASE
      WHEN Weight <= 80 THEN 1
      ELSE 0
    END
  ) AS "61〜80kg以下"
, SUM(
    CASE
      WHEN Weight > 80 THEN 1
      ELSE 0
    END
  ) AS "80kg超"
FROM
  Employees
GROUP BY
  HireFiscalYear
;
