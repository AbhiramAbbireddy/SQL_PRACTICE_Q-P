SELECT name,
       dept,
       salary,
       dept_avg,
       salary - dept_avg AS difference
FROM (
  SELECT *,
         AVG(salary) OVER (PARTITION BY dept) AS dept_avg
  FROM employees
) t;
