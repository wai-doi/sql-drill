SELECT
  p.ProductID
, p.ProductName
, 年月
, SUM(s.Quantity * p.Price) AS 販売合計金額
FROM
  (
    SELECT
      ProductID
    , SUBSTR(CAST(SaleDate AS VARCHAR), 1, 7) AS 年月
    , Quantity
    FROM
      Sales
  ) AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
WHERE
  p.CategoryID IN (1, 3, 9)
GROUP BY
  p.ProductID
, p.ProductName
, 年月
HAVING
  SUM(s.Quantity * p.Price) > 5000
ORDER BY
  p.ProductID
, p.ProductName
, 年月 DESC
;
