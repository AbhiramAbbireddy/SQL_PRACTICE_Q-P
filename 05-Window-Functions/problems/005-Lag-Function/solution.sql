SELECT name,
       salary,
       LAG(salary) OVER (ORDER BY emp_id) AS prev_salary
FROM employees;
