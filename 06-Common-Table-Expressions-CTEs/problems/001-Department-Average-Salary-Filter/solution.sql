WITH dept_avg AS (
  SELECT dept_id,
         AVG(salary) AS avg_salary
  FROM employees
  GROUP BY dept_id
)
SELECT *
FROM dept_avg
WHERE avg_salary > 70000;
