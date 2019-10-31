SELECT
  年月
, SUM(
    CASE
      WHEN p.CategoryID = 1 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct1
, SUM(
    CASE
      WHEN p.CategoryID = 2 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct2
, SUM(
    CASE
      WHEN p.CategoryID = 3 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct3
, SUM(
    CASE
      WHEN p.CategoryID = 4 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct4
, SUM(
    CASE
      WHEN p.CategoryID = 5 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct5
, SUM(
    CASE
      WHEN p.CategoryID = 6 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct6
, SUM(
    CASE
      WHEN p.CategoryID = 7 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct7
, SUM(
    CASE
      WHEN p.CategoryID = 8 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct8
, SUM(
    CASE
      WHEN p.CategoryID = 9 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct9
, SUM(
    CASE
      WHEN p.CategoryID = 10 THEN s.Quantity * p.Price
      ELSE 0
    END
  ) AS Ct10
FROM
  (
    SELECT
      Quantity
    , ProductID
    , SUBSTR(CAST(SaleDate AS VARCHAR), 1, 7) AS 年月
    FROM
      Sales
  ) AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
GROUP BY
  年月
ORDER BY
  年月
;
