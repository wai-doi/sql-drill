SELECT
  p.ProductName
, s1.SaleDate
FROM
  Sales AS s1
    JOIN
  Products AS p
    ON s1.ProductID = p.ProductID
WHERE
  s1.Quantity >
  (
    SELECT
      AVG(Quantity)
    FROM
      Sales AS s2
    WHERE
      s1.ProductID = s2.ProductID
  )
  ORDER BY
    p.ProductID, s1.SaleDate DESC
;

SELECT DISTINCT
  A.ProductID
, B.ProductName
, A.Quantity
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
WHERE
  A.Quantity =
  (
    SELECT
      MAX(C.Quantity)
    FROM
      Sales AS C
    WHERE
      A.ProductID = C.ProductID
  )
ORDER BY
  A.ProductID
;

SELECT
  A.ProductID
, A.ProductName
FROM
  Products AS A
WHERE
  EXISTS
  (
    SELECT
      *
    FROM
      Sales AS B
    WHERE
      A.ProductID = B.ProductID
  )
;

SELECT
  A.ProductID
, B.ProductName
, A.Quantity
FROM
  (
    SELECT
      ProductID
    , MAX(Quantity) AS Quantity
    FROM
      Sales
    GROUP BY
      ProductID
  ) AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
ORDER BY
  A.ProductID
;

SELECT
  ProductID
, ProductName
FROM
  Products AS A
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales AS B
    WHERE
      A.ProductID = B.ProductID
    HAVING
      AVG(Quantity) <= MAX(Quantity) / 10
  )
ORDER BY
  ProductID
;
