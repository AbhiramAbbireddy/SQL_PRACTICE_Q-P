# Department Average Salary Filter (CTE)

## Problem Statement

Display departments whose average salary is greater than 70,000 using a CTE.

## Goal

Calculate department averages inside a CTE and filter for departments exceeding 70,000.

## Solution Approach

Define a CTE `dept_avg` using `GROUP BY dept_id`, then filter `WHERE avg_salary > 70000` in the main query.

## Mistakes Made

- Wrote: `WITH dept_avg AS ( SELECT dept_id, AVG(salary) OVER (PARTITION BY dept_id) AS avg_salary FROM employees ) SELECT DISTINCT dept_id, avg_salary FROM dept_avg WHERE avg_salary > 70000;`
- Why incorrect: Used a window function with `SELECT DISTINCT` instead of `GROUP BY`. While it produced the correct numbers, it generated duplicate rows and required DISTINCT to deduplicate.
- Correction: Use `GROUP BY dept_id` inside the CTE: `WITH dept_avg AS (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id) SELECT * FROM dept_avg WHERE avg_salary > 70000;`.

## Key Learning

CTEs organize queries, they do not replace standard SQL logic. When you need exactly one row per department, `GROUP BY` is cleaner, more readable, and more efficient than window functions combined with `DISTINCT`.
