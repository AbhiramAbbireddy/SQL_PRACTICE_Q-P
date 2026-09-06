SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY dept
           ORDER BY salary DESC
         ) AS rn
  FROM employees
) t
WHERE rn <= 2;
