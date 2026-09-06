# Department With Highest Average Salary (Two CTEs)

## Problem Statement

Find the department(s) with the highest average salary. Constraints: Use two CTEs. Don't use window functions. Don't use LIMIT.

## Goal

Break down finding the department with the highest average salary into two logical CTE steps without window functions or LIMIT.

## Solution Approach

CTE 1 (`dept_avg`): compute average salary per department. CTE 2 (`max_avg`): find the maximum of those averages. Final SELECT: join `dept_avg`, `departments`, and `max_avg` where the average equals the maximum.

## Mistakes Made

- Schema awareness mistake: Wrote `FROM departments` to calculate `AVG(salary)`, but `salary` is in the `employees` table.
- Referenced `avg_salary` from `departments` in the WHERE clause, but `avg_salary` belongs to the CTE.
- Created only one CTE when the problem constraints required two.

## Key Learning

Always verify schema: identify which table owns which column and the connecting join keys. Chaining multiple CTEs allows step-by-step resolution of complex analytical requirements.
