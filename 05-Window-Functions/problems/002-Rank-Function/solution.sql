SELECT *,
       RANK() OVER (ORDER BY salary DESC) AS rnk
FROM employees;
