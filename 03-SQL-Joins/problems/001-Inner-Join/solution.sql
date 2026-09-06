SELECT e.name, d.dept_name
FROM employees AS e
INNER JOIN departments AS d
ON e.dept_id = d.dept_id;
