# Employees Grouped by City

## Problem Statement

Assume the employees table has a `city` column. Display `city` and the number of employees in each city.

## Goal

Group employees by city and count rows per city.

## Solution Approach

Use `SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city;`.

## Mistakes Made

- Wrote `AS emp's` with an apostrophe/single quote inside the alias.
- Why incorrect: In SQL, a single quote `'` denotes a string literal, making `AS emp's` invalid syntax.
- Correction: Use a valid identifier without single quotes, such as `AS employee_count` or `AS emp_count`.

## Key Learning

Column aliases must be valid SQL identifiers and cannot contain unescaped single quotes.
