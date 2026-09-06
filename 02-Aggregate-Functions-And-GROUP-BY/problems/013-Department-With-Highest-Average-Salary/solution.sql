-- Solution 1 (Easiest / Standard Interview Approach)
SELECT department,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

-- Solution 3 (Subquery Approach)
-- SELECT department, avg_salary
-- FROM (
--   SELECT department,
--          AVG(salary) AS avg_salary
--   FROM employees
--   GROUP BY department
-- ) t
-- ORDER BY avg_salary DESC
-- LIMIT 1;
