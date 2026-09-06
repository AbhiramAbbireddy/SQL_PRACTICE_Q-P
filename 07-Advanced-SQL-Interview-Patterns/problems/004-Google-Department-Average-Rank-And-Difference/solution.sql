SELECT name,
       dept_id AS dept,
       salary,
       dept_avg,
       rank,
       salary - dept_avg AS difference
FROM (
  SELECT *,
         AVG(salary) OVER(PARTITION BY dept_id) AS dept_avg,
         ROW_NUMBER() OVER(
           PARTITION BY dept_id
           ORDER BY salary DESC
         ) AS rank
  FROM employees
) t
ORDER BY dept_id, salary DESC;
