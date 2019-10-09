SELECT
  Weight / (Height / 100) / (Height / 100) AS BMI
FROM
  Employee
;

SELECT
  Height * 3 - (Weight * 2.5) AS 結果
FROM
  Employees
;

SELECT
  HireFiscalYear / Weight + Height AS 結果
FROM
  Employees
;

SELECT
Quantity + CustomerID * ProductID * EmployeeID AS 結果
FROM
  Sales
;

SELECT
  Price - ProductCode * CategoryID AS 結果
FROM
  Products
;

SELECT
  CutomerID + CustomerClassID ^ 3 AS 結果
FROM
  Customers
;
