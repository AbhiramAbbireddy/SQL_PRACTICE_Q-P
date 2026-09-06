# Average Salary by Department

## Problem Statement

Write a query to display `department` and `average_salary`. Challenge: Give the average salary column a meaningful alias.

## Goal

Calculate average salary grouped by department with a column alias.

## Solution Approach

Use `SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

If one employee in a department has a NULL salary (e.g. Marketing 65000, NULL), `AVG()` divides only by the count of non-NULL salaries (`65000 / 1 = 65000`).
