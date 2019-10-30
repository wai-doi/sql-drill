UPDATE
  Products
SET
  Price = Price * 1.01
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales
    GROUP BY
      ProductID
    HAVING
      SUM(Quantity) > 100
  )
;

UPDATE
  Products
SET
  Price = Price * 0.97
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

UPDATE
  Salary
SET
  Amount = Amount * 0.95
WHERE
  PayDate = '2007-10-01'
  AND
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) < 10
  )
;

UPDATE
  Salary
SET
  Amount = Amount * 1.1
WHERE
  PayDate = '2007-10-01'
  AND
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) >= 50
  )
;

UPDATE
  Salary
SET
  Amount = Amount * 0.9
WHERE
  PayDate = '2007-8-25'
  AND
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    WHERE
      SaleDate < '2007-08-25'
  )
;

UPDATE
  Salary
SET
  Amount = Amount * 1.1
WHERE
  PayDate = '2007-08-25'
  AND
  EmployeeID IN
  (
    SELECT
      A.EmployeeID
    FROM
      Sales AS A
        JOIN
      Customers AS B
        ON A.CustomerID = B.CustomerID
    WHERE
      A.SaleDate < '2007-08-25'
      AND
      B.CustomerClassID = 1
  )
;
