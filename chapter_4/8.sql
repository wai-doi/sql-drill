DELETE
FROM
  Employees
WHERE
  EmployeeID = 17
;

DELETE
FROM
  Sales
WHERE
  SaleID = 1006

DELETE
FROM
  Salary
WHERE
  EmployeeID = 10
  AND
  PayDate = '2007-10-01'

DELETE
FROM
  Customers
WHERE
  CustomerID >= 10000

DELETE
FROM
  Products
WHERE
  CategoryID = 1

DELETE
FROM
  Customers
WHERE
  CustomerClassID = 2
  AND
  PrefecturalID IN (3, 5, 7, 13)
