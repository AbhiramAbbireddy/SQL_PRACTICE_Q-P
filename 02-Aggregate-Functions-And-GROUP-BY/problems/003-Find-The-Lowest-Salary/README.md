# Find the Lowest Salary

## Problem Statement

Write an SQL query to find the lowest salary. Follow-up Question: Does MIN(salary) consider NULL values?

## Goal

Find the minimum salary value and understand NULL behavior in MIN().

## Solution Approach

Use `SELECT MIN(salary) FROM employees;`.

## Mistakes Made

- Only responded with the conceptual answer `min salary doest care about null's` without providing the SQL query.
- Why incorrect: The task asked to write the SQL query first.
- Correction: Provide `SELECT MIN(salary) FROM employees;`.

## Key Learning

`MIN()`, like all aggregate functions (MAX, AVG, SUM, COUNT(column)), ignores NULL values.
