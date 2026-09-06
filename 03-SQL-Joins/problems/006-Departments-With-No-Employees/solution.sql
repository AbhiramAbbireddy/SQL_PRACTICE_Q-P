-- Option 1 (Recommended LEFT JOIN)
SELECT d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.dept_id IS NULL;

-- Option 2 (RIGHT JOIN)
-- SELECT d.dept_name
-- FROM employees e
-- RIGHT JOIN departments d
-- ON e.dept_id = d.dept_id
-- WHERE e.dept_id IS NULL;
