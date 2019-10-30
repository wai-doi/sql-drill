INSERT
INTO Salary
(
  SalaryID
, EmployeeID
, PayDate
, Amount
)
SELECT
  s.EmployeeID + 100000
, s.EmployeeID
, '2008-02-14'
, SUM(s.Quantity * p.Price * 0.001)
FROM
  Sales AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
GROUP BY
  s.EmployeeID + 100000
, S.EmployeeID
;

INSERT
INTO Salary
(
  SalaryID
, EmployeeID
, PayDate
, Amount
)
SELECT
  EmployeeID + 20000
, EmployeeID
, '2007-10-01'
, 20000
FROM
  Employees
WHERE
  HireFiscalYear <= 1993
;

INSERT
INTO Customers
(
  CustomerID
, CustomerCode
, CustomerName
, Address
, CustomerClassID
, PrefecturalID
)
SELECT
  EmployeeID + 10000
, EmployeeID + 10000
, EmployeeName
, '江戸川区西小岩'
, 2
, 13
FROM
  Employees
WHERE
  HireFiscalYear <= 1988
;

INSERT
INTO Sales
(
  SaleID
, Quantity
, CustomerID
, ProductID
, EmployeeID
, SaleDate
)
SELECT
  EmployeeID + 30000
, 10
, 10
, 20
, EmployeeID
, '2007-09-01'
FROM
  Employees
WHERE
  BloodType = 'O'
;

INSERT
INTO Sales
(
  SaleID
, Quantity
, CustomerID
, EmployeeID
, ProductID

, SaleDate
)
SELECT
  CustomerID + 40000
, 20
, CustomerID
, 5
, 21
, '2007-09-05'
FROM
  Customers
WHERE
  PrefecturalID = 8
;

INSERT
INTO Sales
(
  SaleID
, Quantity
, CustomerID
, ProductID
, EmployeeID
, SaleDate
)
SELECT
  ProductID + 50000
, 30
, 15
, ProductID
, 2
, '2007-09-10'
FROM
  Products
WHERE
  CategoryID = 5
;
