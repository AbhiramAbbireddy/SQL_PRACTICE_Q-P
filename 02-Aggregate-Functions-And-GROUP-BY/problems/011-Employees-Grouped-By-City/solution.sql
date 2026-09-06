-- Initial Attempt
-- SELECT city, COUNT(*) AS emp's FROM employees GROUP BY city;

-- Corrected Version
SELECT city, COUNT(*) AS employee_count
FROM employees
GROUP BY city;
