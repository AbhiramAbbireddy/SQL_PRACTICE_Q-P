# Count Employees in Each Department

## Problem Statement

Write a query to display `department` and the number of employees in each department. Interview Follow-up: Can we write `SELECT department, name, COUNT(*) FROM employees GROUP BY department;`?

## Goal

Group rows by department and calculate the count of employees per group.

## Solution Approach

Group by `department` and apply `COUNT(*)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Rule to remember: Every column in the SELECT list must either appear in the `GROUP BY` clause or be inside an aggregate function. Unaggregated columns like `name` cannot be selected because SQL does not know which name to return for each grouped department.
