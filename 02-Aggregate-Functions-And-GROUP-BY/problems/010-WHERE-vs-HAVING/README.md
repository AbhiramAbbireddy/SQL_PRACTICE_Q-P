# WHERE vs HAVING

## Problem Statement

Given the `employees` table, write a query to: show each department, count the number of employees, consider only employees whose salary is greater than 50,000, and return only departments that have more than 2 such employees.

## Goal

Combine row filtering (`WHERE`) and group filtering (`HAVING`) in the same query.

## Solution Approach

Use `WHERE salary > 50000` to filter individual rows first, then `GROUP BY department`, and finally `HAVING COUNT(*) > 2` to filter the groups.

## Mistakes Made

- Wrote `count()` instead of `COUNT(*)` in the initial query string.
- Why incorrect: `COUNT()` requires an argument in standard SQL.
- Correction: Use `COUNT(*)`.

## Key Learning

Demonstrates the complete SQL filtering pipeline: WHERE filters raw rows before grouping, GROUP BY creates groups, aggregate functions compute totals per group, and HAVING filters the aggregated groups.
