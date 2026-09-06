SELECT name,
       salary,
       SUM(salary) OVER (
         PARTITION BY dept_id
         ORDER BY emp_id
       ) AS running_total
FROM employees;
