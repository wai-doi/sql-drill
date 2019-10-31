SELECT
  pr.PrefecturalID
, pr.PrefecturalName
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
        JOIN
      Prefecturals AS pr
        ON c.PrefecturalID = pr.PrefecturalID
GROUP BY
  pr.PrefecturalID
, pr.PrefecturalName
, p.ProductName
ORDER BY
  pr.PrefecturalID
, pr.PrefecturalName
, p.ProductName
;
