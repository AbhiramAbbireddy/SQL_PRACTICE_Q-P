-- Initial Attempt
-- SELECT department, MAX(salary) FROM employees GROUP BY department;

-- Polished Version
SELECT department,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;
