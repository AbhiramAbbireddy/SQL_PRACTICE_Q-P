-- Initial Attempt
-- SELECT e.name, d.dept_name FROM employees AS e LEFT JOIN department AS d ON e.dept_id = d.dept_id;

-- Corrected Version
SELECT e.name, d.dept_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;
