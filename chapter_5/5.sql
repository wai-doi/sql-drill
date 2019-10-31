SELECT
  c.CustomerID
, c.CustomerName
, p.ProductName
, SUM(s.Quantity * p.Price) AS 販売合計金額
FROM
  Sales AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
      JOIN
    Customers AS c
      ON s.CustomerID = c.CustomerID
GROUP BY
  c.CustomerID
, c.CustomerName
, p.ProductName
ORDER BY
  c.CustomerID
, c.CustomerName
, p.ProductName
;
