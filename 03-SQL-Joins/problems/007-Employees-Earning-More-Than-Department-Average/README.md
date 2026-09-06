# Employees Earning More Than Their Department Average

## Problem Statement

Find employees whose salary is greater than the average salary of their own department.

## Goal

Compare each employee's salary against the average salary calculated for their specific department.

## Solution Approach

Use a correlated subquery in the WHERE clause comparing `e.salary > (SELECT AVG(salary) FROM employees WHERE dept_id = e.dept_id)`.

## Mistakes Made

No errors in logic. Included an extra `JOIN departments as d` which was unnecessary since `dept_id` is already present on `employees`.

## Key Learning

A correlated subquery executes once for each row in the outer query, referencing outer row values (`e.dept_id`). Unnecessary joins can be eliminated if the required columns already exist in the base table.
