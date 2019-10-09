SELECT
  CustomerName + '様' AS お名前
FROM
  Customers
;

SELECT
  EmployeesName + 'さん' AS 社員名
FROM
  Employees
;

SELECT
  'E-MAIL:' + Email AS メールアドレス
FROM
  Employees
;

SELECT
  EmployeeName + 'さんの' + 'E-MAIL:' + Email AS 連絡先
FROM
  Employees
;

SELECT
  CustomerName + '様のお住まいは' + Address AS お客様連絡先
FROM
  Customers
;

SELECT
  '社員' + EmployeeName + 'さんの血液型は' + BloodType + '型' AS 社員血液型
FROM
  Employees
;
