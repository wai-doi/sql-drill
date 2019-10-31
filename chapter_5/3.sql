SELECT
  e.EmployeeID
, e.EmployeeName
, 年月
, SUM(
      CASE
        WHEN 販売金額 IS NULL THEN 0
        ELSE 販売金額
      END
    ) AS 販売合計金額
FROM
  Employees AS e
    LEFT OUTER JOIN
  (
    SELECT
      s.EmployeeID
    , SUBSTR(CAST(SaleDate AS VARCHAR), 1, 7) AS 年月
    , s.Quantity * p.Price AS 販売金額
    FROM
      Sales AS s
        JOIN
      Products AS p
        ON s.ProductID = p.ProductID
  ) AS x
    ON e.EmployeeID = x.EmployeeID
GROUP BY
  e.EmployeeID
, e.EmployeeName
, 年月
ORDER BY
  e.EmployeeID
, e.EmployeeName
, 年月
;
