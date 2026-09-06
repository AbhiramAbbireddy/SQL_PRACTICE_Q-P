-- Query to find employee(s) earning the second highest distinct salary
SELECT name, salary
FROM employees
WHERE salary = (
  SELECT MAX(salary)
  FROM employees
  WHERE salary < (
    SELECT MAX(salary)
    FROM employees
  )
);
