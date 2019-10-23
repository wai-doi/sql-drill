SELECT
  d.DepartmentName AS 部門名
, AVG(s.amount) AS 部門別平均給与額
FROM
  Salary AS s
    JOIN
  BelongsTo AS b
    ON s.EemployeeID = b.EmployeeID
      JOIN
    Departments AS d
      ON b.DepartmentID = d.DepartmentID
GROUP BY
  d.DepartmentName
;

SELECT
  B.CategoryID
, MAX(C.CategoryName) AS カテゴリ名
, SUM(Quantity) AS 数量合計
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
    JOIN
  Categories AS C
    ON A.CategoryName = C.CategoryName
GROUP BY
  C.CategoryID
;

SELECT
  SUM(A.Quantity) AS 合計数量
, B.PrefecturalID
, MAX(C.PrefecturalName) AS 県名
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
    JOIN
  Prefecturals AS C
    ON B.PrefecturalID = C.PrefecturalID
GROUP BY
  B.PrefecturalID
;

SELECT
  MAX(A.Quantity) AS 最大数量
, B.CustomerClassID
, MIN(C.CustomerClassName) AS 顧客クラス名
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
    JOIN
  CustomerClasses AS C
    ON B.CustomerClassID = C.CustomerClassID
GROUP BY
  B.CustomerClassID
;

SELECT
  SUM(A.Quantity) AS 合計数量
, B.PrefecturalID
, MAX(C.PrefecturalName) AS 県名
FROM
  Sales AS A
, Customers AS B
, Prefecturals AS C
WHERE
  A.CustomerID = B.CustomerID
  AND
  B.PrefecturalID = C.PrefecturalID
GROUP BY
  B.PrefecturalID
;

SELECT
  MAX(A.Quantity) AS 最大数量
, B.CustomerClassID
, MIN(C.CustomerClassName) AS 顧客クラス名
FROM
  Sales AS A
, Customers AS B
, CustomerClasses AS C
WHERE
  A.CustomerID = B.CustomerID
  AND
  B.CustomerClassID = C.CustomerClassID
GROUP BY
  B.CustomerClassID
;
