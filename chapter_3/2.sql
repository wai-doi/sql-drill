SELECT
  Customers.PrefecturalID
, Prefecturals.PrefecturalName AS 都道府県名
, COUNT(*) AS 顧客数
FROM
  Customers
    JOIN
  Prefecturals
    ON Customers.PrefecturalID = Prefecturals.prefecturalID
GROUP BY
  Customers.prefecturalID
, Prefecturals.PrefecturalName
;

SELECT
  EmployeeName
, PayDate
, Amount
FROM
  Salary AS A
    JOIN
  Employees AS B
    ON A.EmployeeID = B.EmployeeID
ORDER BY
  B.EmployeeID
;

SELECT
  Quantity
, CustomerName
, ProductName
, EmployeeName
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
    JOIN
  Employees AS C
    ON A.EmployeeID = C.EmployeeID
    JOIN
  Products AS D
    ON A.ProductID = D.productID
WHERE
  A.Quantity >= 200
;

SELECT
  A.ProductID
, B.ProductName
, SUM(Quantity) AS 数量合計
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
GROUP BY
  A.ProductID
, B.ProductName
HAVING
  SUM(Quantity) >= 300
;

SELECT
  A.Quantity
, B.CustomerName
, C.ProductName
, D.EmployeeName
FROM
  Sales AS A
, Customers AS B
, Products AS C
, Employees AS D
WHERE
  A.Quantity >= 200
  AND
  A.CustomerID = B.CustomerID
  AND
  A.ProductID = C.ProductID
  AND
  A.EmployeeID = D.EmployeeID
;

SELECT
  A.CustomerName
, B.PrefecturalName
, C.CustomerClassName
FROM
  Customers AS A
, Prefecturals AS B
, CustomerClasses AS C
WHERE
  A.PrefecturalID = B.PrefecturalID
  AND
  A.CustomerClassID = C.CustomerClassID
ORDER BY
  A.PrefecturalID
