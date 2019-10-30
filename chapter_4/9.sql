DELETE
FROM
  Products
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

DELETE
FROM
  Salary
WHERE
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
  )
;

DELETE
FROM
  Products
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
    GROUP BY
      ProductID
    HAVING
      SUM(Quantity) >= 20
  )
;

DELETE
FROM
  Customers
WHERE
  CustomerID NOT IN
  (
    SELECT
      CustomerID
    FROM
      Sales
  )
;

DELETE
FROM
  Employees
WHERE
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) > 5
  )
;

DELETE
FROM
  Sales
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      BelongTo
    WHERE
      EndDate IS NULL
      AND
      DepartmentID = 3
  )
;
