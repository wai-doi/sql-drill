SELECT
  COUNT( * ) AS 子のつく社員の人数
FROM
  Employees
WHERE
  EmployeeName LIKE '%子'
;

SELECT
  CustomerName
FROM
  Customers
WHERE
  CustomerName LIKE '株式会社'
;

SELECT
  AVG(Height)
FROM
  Employees
WHERE
  EmployeeName LIKE 'ー'
;

SELECT
  COUNT (*)
FROM
  Customers
WHERE
  CustomerName NOT LIKE '株式会社'
;

SELECT
  EmployeeNam
, Height
FROM
  Employees
WHERE
  EmployeeName LIKE 'リ'
  AND Height <= 160
;

SELECT
  *
FROM
  Customers
WHERE
  CustomerName NOT LIKE '株式会社'
  AND Address LIKE '江戸川区'
;
