SELECT
  ProductName AS 商品名
, Price * 1.05 AS 税込価格
FROM
  Products
;

SELECT
  Amount * 1.05 AS "給与の15％"
FROM
  Salary
;

SELECT
  Height / 2 AS 身長の半分
FROM
  Employees
;

SELECT
  Weight * 3 - 50 AS 体重の3倍引く50
FROM
  Employees
;

SELECT
  (Price + 100) * 0.3 AS "（価格＋100）の30％"
FROM
  Products
;

SELECT
  (Quantity + 200) / 3 AS "（数量＋200）÷3"
FROM
  Sales
;
