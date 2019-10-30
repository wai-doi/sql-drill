UPDATE
  Products
SET
  Price = Price * 0.97

UPDATE
  Customers
SET
  CustomerCode = CustomerCode + 1000

UPDATE
  Employees
SET
  Email = Email || '.co.jp'

UPDATE
  Employees
SET
  Height = Height + 2
, Weight = Weight - 5

UPDATE
  Departments
SET
  DepartmentName = DepartmentName || '部'

UPDATE
  Customers
SET
  CustomerName =
  CASE
    WHEN CustomerClassID = 1 THEN CustomerName || '御中'
    ELSE CustomerName || '様'
  END
