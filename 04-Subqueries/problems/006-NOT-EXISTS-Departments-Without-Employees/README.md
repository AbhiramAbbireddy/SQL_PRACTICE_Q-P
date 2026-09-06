# NOT EXISTS - Departments Without Employees

## Problem Statement

Display departments that do not have any employees using NOT EXISTS.

## Goal

Find departments with no matching records using NOT EXISTS.

## Solution Approach

From `departments d`, check `WHERE NOT EXISTS (SELECT 1 FROM employees WHERE dept_id = d.dept_id)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`NOT EXISTS` is completely safe even if `employees.dept_id` contains NULL values, whereas `NOT IN` returns no rows if any NULL is present.
