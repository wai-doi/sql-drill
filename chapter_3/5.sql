SELECT
  p1.ProductName AS 商品名1
, p2.ProductName AS 商品名2
, (p1.Price + p2.Price) AS セット価格
FROM
  Products AS p1
    JOIN
  Products AS p2
    ON p1.ProductID < p2.ProductID
    AND p1.categoryID <> p2.CategoryID
WHERE
  (p1.Price + p2.Price) > 2500
;

SELECT
  p1.ProductName AS 商品名1
, p2.ProductName AS 商品名2
FROM
  Products AS p1
    JOIN
  Products AS p2
    ON p1.ProductID < p2.ProductID
    AND p1.categoryID = p2.categoryID
;

SELECT
  c1.CustomerName AS 顧客名1
, c2.CustomerName AS 顧客名2
FROM
  Customers AS c1
    JOIN
  Customers AS c2
    ON c1.CustomerID < c2.CustomerID
    AND c1.PrefecturalID = c2.PrefecturalID
    AND c1.CustomerClassesID = c2.CustomerClassID
;

SELECT
  e1.EmployeeName AS 従業員名1
, e2.EmployeeName AS 従業員名2
FROM
  Employees AS e1
    JOIN
  Employees AS e2
    ON e1.Birthday > e2.Birthday
;

SELECT
  c1.CategoryName AS カテゴリー1
, c2.CategoryName AS カテゴリー2
FROM
  Categories AS c1
    JOIN
  Categories AS c2
    ON c1.CategoryID < c2.CategoryID
;

SELECT
  c1.CustomerName AS 顧客名1
, c2.CustomerName AS 顧客名2
FROM
  Customers AS c1
    JOIN
  Customers AS c2
    ON c1.CustomerID < c2.CustomerID
    AND c1.PrefecturalID = c2.PrefecturalID
    AND c1.CustomerClassesID = c2.CustomerClassID
WHERE
  c1.PrefecturalID <> 13
;
