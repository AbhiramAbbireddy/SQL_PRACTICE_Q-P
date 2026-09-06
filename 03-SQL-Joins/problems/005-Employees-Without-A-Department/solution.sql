SELECT e.name
FROM employees e
LEFT JOIN departments d
 ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
