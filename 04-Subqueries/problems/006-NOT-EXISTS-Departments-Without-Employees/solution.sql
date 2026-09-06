SELECT d.dept_name
FROM departments AS d
WHERE NOT EXISTS (
  SELECT 1
  FROM employees
  WHERE dept_id = d.dept_id
);
