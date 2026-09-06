SELECT e.name
FROM employees AS e
WHERE EXISTS (
  SELECT 1
  FROM departments
  WHERE dept_id = e.dept_id
);
