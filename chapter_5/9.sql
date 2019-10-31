SELECT
  ProductID
, ProductName
, "6月販売金額"
, "7月販売金額"
, CASE
    WHEN "6月販売金額" < "7月販売金額" THEN '↑'
    WHEN "6月販売金額" = "7月販売金額" THEN '→'
    ELSE '↓'
  END AS "対6月増減"
, "8月販売金額"
, CASE
    WHEN "7月販売金額" < "8月販売金額" THEN '↑'
    WHEN "7月販売金額" = "8月販売金額" THEN '→'
    ELSE '↓'
  END AS "対7月増減"
FROM
  (
    SELECT
      p.ProductID
    , p.ProductName
    , SUM(
          CASE
            WHEN s.SaleDate IS NULL THEN 0
            WHEN SUBSTR(CAST(s.SaleDate AS VARCHAR), 1, 7) = '2007-06' THEN s.Quantity * p.Price
            ELSE 0
          END
        ) AS "6月販売金額"
    , SUM(
          CASE
            WHEN s.SaleDate IS NULL THEN 0
            WHEN SUBSTR(CAST(s.SaleDate AS VARCHAR), 1, 7) = '2007-07' THEN s.Quantity * p.Price
            ELSE 0
          END
        ) AS "7月販売金額"
    , SUM(
          CASE
            WHEN s.SaleDate IS NULL THEN 0
            WHEN SUBSTR(CAST(s.SaleDate AS VARCHAR), 1, 7) = '2007-08' THEN s.Quantity * p.Price
            ELSE 0
          END
        ) AS "8月販売金額"
    FROM
      Products AS p
        LEFT OUTER JOIN
      Sales AS s
        ON p.ProductID = s.ProductID
    GROUP BY
      p.ProductID
    , p.ProductName
  )
ORDER BY
  ProductID
;
