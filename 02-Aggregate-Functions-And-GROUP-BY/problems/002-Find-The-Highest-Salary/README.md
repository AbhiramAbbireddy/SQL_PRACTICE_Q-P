# Find the Highest Salary

## Problem Statement

Write a query to find the highest salary among all employees. Interview Follow-up: If the interviewer asks for the employee(s) who earn the highest salary, does MAX(salary) work?

## Goal

Find the maximum numerical value in the `salary` column.

## Solution Approach

Use the aggregate function `MAX(salary)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`MAX(salary)` returns only the scalar maximum salary value (120000), not employee details. Returning the employee(s) with the highest salary requires a subquery or window function.
