WITH dept_avg AS (
  SELECT dept_id,
         AVG(salary) AS dept_avg_salary
  FROM employees
  GROUP BY dept_id
)
SELECT e.name,
       e.department,
       e.salary
FROM employees e
JOIN dept_avg d
  ON e.dept_id = d.dept_id
WHERE e.salary > d.dept_avg_salary;
