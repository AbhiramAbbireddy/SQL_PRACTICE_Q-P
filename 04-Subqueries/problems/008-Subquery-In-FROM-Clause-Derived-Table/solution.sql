-- Initial Attempt (missing alias inside subquery)
-- SELECT dept_id, avg_salary FROM (SELECT dept_id, AVG(salary) FROM employees GROUP BY dept_id) t WHERE avg_salary > 70000;

-- Corrected Version
SELECT dept_id, avg_salary
FROM (
  SELECT dept_id,
         AVG(salary) AS avg_salary
  FROM employees
  GROUP BY dept_id
) t
WHERE avg_salary > 70000;
