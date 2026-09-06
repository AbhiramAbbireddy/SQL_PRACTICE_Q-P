# Find the Total Salary Paid

## Problem Statement

Write an SQL query to find the total salary paid to all employees. Interview Follow-up: For salaries 1000, 2000, NULL, what will SUM(salary) return?

## Goal

Sum the values in the `salary` column.

## Solution Approach

Use `SELECT SUM(salary) FROM employees;`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`SUM()` ignores NULL values (e.g. 1000 + 2000 + NULL = 3000). Memory trick: Every aggregate function ignores NULL except `COUNT(*)`.
