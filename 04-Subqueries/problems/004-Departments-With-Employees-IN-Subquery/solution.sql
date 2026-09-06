SELECT dept_name
FROM departments
WHERE dept_id IN (
  SELECT DISTINCT dept_id
  FROM employees
);
