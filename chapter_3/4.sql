SELECT
  p.ProductName
, AVG( p.Price *
        CASE
          WHEN s.Quantity IS NULL THEN 0
          ELSE s.Quantity
        END
      ) AS 平均販売価格
FROM
  Products AS p
    LEFT OUTER JOIN
  Sales AS s
    ON s.ProductID = p.ProductID
  GROUP BY
    p.ProductName
;

SELECT
  MAX(A.CustomerName)
, SUM(
        CASE
          WHEN B.Quantity IS NULL THEN 0
          ELSE B.Quantity
        END
      )
FROM
  Cutomers AS A
    LEFT OUTER JOIN
  Sales AS B
    ON A.CustomerID = B.CustomerID
GROUP BY
  A.CustomerID
;

SELECT
  A.EmployeeID
, MAX(A.EmployeeName) AS 社員名
, SUM(
      CASE
        WHEN B.EmployeeID IS NULL THEN 0
        ELSE 1
      END
    ) AS 販売件数
FROM
  Employees AS A
    LEFT OUTER JOIN
  Sales AS B
    ON A.EmployeeID = B.EmployeeID
GROUP BY
  A.EmployeeID
;

SELECT
  A.PrefecturalName
, SUM(
      CASE
        WHEN B.PrefecturalID IS NULL THEN 0
        ELSE 1
      END
    ) AS 顧客数
FROM
  Prefecturals AS A
    LEFT OUTER JOIN
  Customers AS B
    ON A.PrefecturalID = B.PrefecturalID
GROUP BY
  A.PrefecturalName
;

SELECT
  A.EmployeeID
, CASE
    WHEN B.CNT IS NULL THEN 0
    ELSE B.CNT
  END AS 販売件数
FROM
  Employees AS A
    LEFT OUTER JOIN
  (
    SELECT
      EmployeeID
    , COUNT(*) AS CNT
    FROM
      Sales
    GROUP BY
      EmployeeID
  ) AS B
    ON A.EmployeeID = B.EmployeeID
;

SELECT
  A.EmployeeName
, CASE
    WHEN B.Amount IS NULL THEN 0
    ELSE B.Amount
  END AS 支給額
FROM
  Employees AS A
    LEFT OUTER JOIN
  (
    SELECT
      EmployeeID
    , Amount
    FROM
      Salary
    WHERE
      PayDate = '2007-02-25'
  ) AS B
    ON A.EmployeeID = B.EmployeeID
;
