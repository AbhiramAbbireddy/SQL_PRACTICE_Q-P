SELECT dept_id,
       name,
       salary
FROM (
  SELECT *,
         DENSE_RANK() OVER (
           PARTITION BY dept_id
           ORDER BY salary DESC
         ) AS rnk
  FROM employees
) t
WHERE rnk = 2;
