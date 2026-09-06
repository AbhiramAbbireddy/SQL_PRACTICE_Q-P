SELECT designation,
       COUNT(*) AS employee_count
FROM employees
GROUP BY designation;
