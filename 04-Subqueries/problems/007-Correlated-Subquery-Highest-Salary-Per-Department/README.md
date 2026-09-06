# Correlated Subquery - Highest Salary Per Department

## Problem Statement

Display employees whose salary is the highest in their department. Follow-up: What if two employees share the highest salary in a department?

## Goal

Find employees whose salary equals the maximum salary of their specific department.

## Solution Approach

Use a correlated subquery comparing each employee's salary to `SELECT MAX(salary) FROM employees WHERE dept_id = e.dept_id`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Correlated subqueries evaluate for every row of the outer query. If multiple employees tie for highest salary, both are returned. For very large tables, joining to an aggregated derived table is an alternative optimization.
