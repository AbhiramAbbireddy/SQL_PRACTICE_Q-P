# ROW_NUMBER()

## Problem Statement

Assign a unique row number to employees based on salary in descending order.

## Goal

Generate sequential, unique row numbers ordered by salary.

## Solution Approach

Use `ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num`.

## Mistakes Made

- Wrote `select *, row_number() over(order by salary desc)` omitting `FROM employees` and alias.
- Why incorrect: Missing FROM table reference and alias.
- Correction: `SELECT *, ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num FROM employees;`.

## Key Learning

Window functions add new computed columns while preserving all existing rows (unlike aggregate functions which collapse rows).
