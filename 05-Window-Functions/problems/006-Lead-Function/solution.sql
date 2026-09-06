SELECT name,
       salary,
       LEAD(salary) OVER (ORDER BY emp_id) AS next_salary
FROM employees;
