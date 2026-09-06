-- Option 1 (Recommended in modern SQL)
SELECT d.dept_name, e.name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- Option 2 (Using RIGHT JOIN)
-- SELECT d.dept_name, e.name
-- FROM employees e
-- RIGHT JOIN departments d
-- ON e.dept_id = d.dept_id;
