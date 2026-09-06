# Employees Earning Above the Company Average

## Problem Statement

Display Employee name and Salary for employees whose salary is greater than the average salary of the entire company.

## Goal

Filter employees whose salary exceeds the scalar company average.

## Solution Approach

Use `WHERE salary > (SELECT AVG(salary) FROM employees)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Scalar subqueries integrate seamlessly with comparison operators (`>`, `=`, etc.) to filter rows against table-wide aggregations.
