-- Simplified Query without unnecessary JOIN
SELECT e.name,
       e.salary
FROM employees e
WHERE e.salary > (
  SELECT AVG(salary)
  FROM employees
  WHERE dept_id = e.dept_id
);
