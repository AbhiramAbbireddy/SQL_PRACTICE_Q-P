# Count Total Employees

## Problem Statement

Write an SQL query to find the total number of employees in the `employees` table. Interview Challenge: What is the difference between COUNT(*), COUNT(employee_id), and COUNT(salary)?

## Goal

Count total records and explain the difference between COUNT(*), primary key COUNT, and nullable column COUNT.

## Solution Approach

Use `SELECT COUNT(*) FROM employees;` to count all table rows.

## Mistakes Made

- Wrote `select count() from employees;` omitting `*` or a column inside `count()`.
- Why incorrect: In standard SQL, `COUNT()` requires an argument such as `*` or a column name.
- Correction: Use `SELECT COUNT(*) FROM employees;`.
- Misinterpreted `COUNT(employee_id)` as counting how many times a particular ID occurs in the DB.
- Why incorrect: `COUNT(employee_id)` counts the number of rows where `employee_id` is NOT NULL.
- Correction: Golden Interview Rule: `COUNT(column)` ignores NULLs; `COUNT(*)` counts every row regardless of NULLs.

## Key Learning

`COUNT(*)` counts all rows including NULLs. `COUNT(column)` counts only rows where that specific column has a non-NULL value.
