# Find the Average Salary

## Problem Statement

Write a query to find the average salary of all employees. Interview Follow-up: If salaries are 1000, 2000, NULL, what does AVG(salary) return?

## Goal

Compute the average salary across all employees with non-NULL salaries.

## Solution Approach

Use `SELECT AVG(salary) FROM employees;`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`AVG()` ignores NULL values. For values (1000, 2000, NULL), `AVG(salary)` evaluates as `(1000 + 2000) / 2 = 1500`, not divided by 3. In SQL, `AVG(column)` is calculated as `SUM(column) / COUNT(column)`.
