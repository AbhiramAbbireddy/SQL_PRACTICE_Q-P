WITH dept_avg AS (
  SELECT dept_id,
         AVG(salary) AS avg_salary
  FROM employees
  GROUP BY dept_id
),
max_avg AS (
  SELECT MAX(avg_salary) AS highest_avg
  FROM dept_avg
)
SELECT d.dept_name,
       da.avg_salary
FROM dept_avg da
JOIN departments d
  ON da.dept_id = d.dept_id
JOIN max_avg m
  ON da.avg_salary = m.highest_avg;
