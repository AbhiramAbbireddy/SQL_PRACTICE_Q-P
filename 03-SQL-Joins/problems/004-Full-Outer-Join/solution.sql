SELECT e.name, d.dept_name
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.dept_id = d.dept_id;
