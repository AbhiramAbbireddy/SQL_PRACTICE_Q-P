SELECT e.name,
       e.dept_id,
       e.salary
FROM employees AS e
WHERE salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE dept_id = e.dept_id
);
