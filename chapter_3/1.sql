SELECT
 *
FROM
  Product
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

SELECT
  EmployeeID
, EmployeeName
FROM
  Employees
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Salary
    GROUP BY
      EmployeeID
    HAVING
      MAX(Amount) >= 300000
  )
;

SELECT
  SaleID
, Quantity
, CustomerID
, (
  SELECT
    CustomerName
  FROM
    Customers
  WHERE
    CustomerID = CustomerName
  ) AS 顧客
FROM
  Sales
WHERE
  Quantity >= 100
;

SELECT
  ProductID
, ProductName
FROM
  Products
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales
    WHERE
      Quantity >= 100
  )
;

SELECT
  EmployeeID
, EmployeeName
, (
    SELECT
      MAX(Amount)
    FROM
      Salary
    WHERE
      Employee.EmployeeID = Salary.EmployeeID
  ) AS 最高給与額
FROM
  Employees
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Salary
    GROUP BY
      EmployeeID
    HAVING
      MAX(Amount) >= 300000
  )
;

SELECT
  SaleID
, Quantity
, CustomerID
, (
  SELECT
    CustomerName
  FROM
    Customers
  WHERE
    CustomerID = CustomerName
  ) AS 顧客
, (
    SELECT
      ProductName
    FROM
      Products
    WHERE
      Sales.ProductID = Products.ProductID
  ) AS 商品名
FROM
  Sales
WHERE
  Quantity >= 100
;
