UPDATE
  Customers
SET
  Address = '世田谷区たがやせ1丁目'
WHERE
  CustomerID = 5

UPDATE
  Employees
SET
  Height = Height + 5
WHERE
  EmployeeID = 10

UPDATE
  Salary
SET
  Amount = Amount + 20000
WHERE
  EmployeeID = 5
  AND
  PayDate = '2007-03-25'

UPDATE
  Employees
SET
  Height = Height - 2
, Weight = Weight + 3
WHERE
  BloodType = 'AB'

UPDATE
  Sales
SET
  Quantity = Quantity + 10
WHERE
  CustomerID = 10
  AND
  ProductID = 5
  AND
  SaleDate >= '2007-05-31'

UPDATE
  Products
SET
  Price =
  CASE
    WHEN Price >= 2000 THEN Price * 0.8
    WHEN Price >= 1000 THEN Price * 0.9
    ELSE Price
  END
WHERE
  CategoryID = 7

