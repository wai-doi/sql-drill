UPDATE
  Salary
SET
  Amount = Amount +
  (
    SELECT
      (2007 - e.HireFiscalYear) * 1000
    FROM
      Employees AS e
    WHERE
      Salary.EmployeeID = e.EmployeeID
  )
WHERE
  PayDate = '2008-02-14'
  AND
  EXISTS
  (
    SELECT
      'X'
    FROM
      Employees AS e
    WHERE
      Salary.EmployeeID = e.EmployeeID
  )
;

UPDATE
  Customers
SET
  Address =
  (
    SELECT
      PrefecturalName
    FROM
      Prefecturals
    WHERE
      Customers.PrefecturalID = Prefecturals.PrefecturalID
  ) || Address
WHERE
  EXISTS
  (
    SELECT
      'X'
    FROM
      Prefecturals
    WHERE
      Customers.PrefecturalID = Prefecturals.PrefecturalID
  )
;

UPDATE
  Salary
SET
  Amount = Amount +
  (
    SELECT
      SUM(Sales.Quantity * Products.Price) * 0.03
    FROM
      Sales
        JOIN
      Products
        ON Sales.ProductID = Products.ProductID
    WHERE
      Sales.SaleDate < '2007-08-25'
      AND
      Salary.EmployeeID = Sales.EmployeeID
  )
WHERE
  PayDate = '2007-08-25'
  AND
  EXISTS
  (
    SELECT
      'X'
    FROM
      Sales
    WHERE
      SaleDate < '2007-08-25'
      AND
      Salary.EmployeeID = Sales.EmployeeID
  )
;

UPDATE
  Products
SET
  Price =
  (
    SELECT
      AVG(Sales.Quantity * Products.Price)
    FROM
      Sales
    WHERE
      Products.ProductID = Sales.ProductID
  )
WHERE
  EXISTS
  (
    SELECT
      'X'
    FROM
      Sales
    WHERE
      Products.ProductID = Sales.ProductID
  )
;

UPDATE
  Products
SET
  ProductName = ProductName || '(' ||
  (
    SELECT
      CategoryName
    FROM
      Categories
    WHERE
      Products.CategoryID = Categories.CategoryID
  )
  || ')'
WHERE
  EXISTS
  (
    SELECT
      'X'
    FROM
      Categories
    WHERE
      Products.CategoryID = Categories.CategoryID
  )
;

UPDATE
  Products
SET
  ProductName =
  (
    SELECT
      SUM(Sales.Quantity)
    FROM
      Sales
    WHERE
      Products.ProductID = Sales.ProductID
  ) || '個も売れてるヒット商品！' || ProductName

WHERE
  EXISTS
  (
    SELECT
      'X'
    FROM
      Sales
    WHERE
      Products.ProductID = Sales.ProductID
    HAVING
      SUM(Sales.Quantity) >= 500
  )
;
