SELECT name,
       salary,
       SUM(salary) OVER (ORDER BY emp_id) AS running_total
FROM employees;
