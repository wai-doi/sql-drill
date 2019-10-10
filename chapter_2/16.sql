SELECT DISTINCT
  Address AS 住所
FROM
  Customers
;

SELECT DISTINCT
  HireFiscalYear
FROM
  Employees
;

SELECT DISTINCT
  CustomerID
, ProductID
FROM
  Sales
;

SELECT DISTINCT
  CustomerClassID
, PrefecturalID
FROM
  Customers
;

SELECT DISTINCT
  CustomerID
, ProductID
, EmployeeID
FROM
  Sales
;

SELECT DISTINCT
  Price
, CategoryID
FROM
  Products
;
