# Second Highest Salary

## Problem Statement

Find the second highest salary in the company. Constraint: Do not use LIMIT, OFFSET, or window functions. Follow-up: Find the employee(s) who earn the second highest salary.

## Goal

Find the second highest distinct salary and the employee(s) earning that salary without LIMIT or window functions.

## Solution Approach

Use nested MAX queries: find the maximum salary strictly less than the maximum salary.

## Mistakes Made

- Proposed using `ORDER BY salary DESC LIMIT 2 OFFSET 1` to find the second highest-paid employee.
- Why incorrect: If there are duplicate top salaries (e.g. Sarah 120000, David 120000), `OFFSET 1` only skips the first row, returning David (120000) and Ankit (90000), which is the 2nd and 3rd row, not the second highest distinct salary.
- Correction: Use subquery filtering on distinct salary: `WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees))`.

## Key Learning

Always distinguish whether an interview question asks for a value, a row, or distinct values. `OFFSET` skips rows, not distinct values.
