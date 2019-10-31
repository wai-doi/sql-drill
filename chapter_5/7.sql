SELECT
  d.DepartmentID
, d.DepartmentName
, 年月
, AVG(s.Amount) AS 平均給与
FROM
  (
    SELECT
      EmployeeID
    , PayDate
    , SUBSTR(CAST(PayDate AS VARCHAR), 1, 7) AS 年月
    , Amount
    FROM
      Salary
    WHERE
      SUBSTR(CAST(PayDate AS VARCHAR), 1, 4) = '2007'
  ) AS s
    JOIN
  BelongTo AS b
    ON s.EmployeeID = b.EmployeeID
    AND s.PayDate >= b.StartDate
    AND s.PayDate <
      CASE
        WHEN b.EndDate IS NULL THEN '9999-12-31'
        ELSE b.EndDate
      END
    JOIN
  Departments AS d
    ON b.DepartmentID = d.DepartmentID
GROUP BY
  d.DepartmentID
, d.DepartmentName
, 年月
ORDER BY
  d.DepartmentID
, d.DepartmentName
, 年月
;
