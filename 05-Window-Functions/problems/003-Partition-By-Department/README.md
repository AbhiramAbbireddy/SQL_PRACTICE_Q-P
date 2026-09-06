# PARTITION BY Department

## Problem Statement

Assign a row number within each department, ordered by salary descending. Follow-up: Find the highest-paid employee in each department.

## Goal

Reset row numbering for each department and filter to find the top employee per department.

## Solution Approach

Use `PARTITION BY department ORDER BY salary DESC` inside `ROW_NUMBER()`, wrapped in a derived table to filter `WHERE rn = 1`.

## Mistakes Made

- Typos in SQL keywords/columns: `oder by` instead of `ORDER BY`, `salar` instead of `salary`, `empoloyees`.
- Attempted to filter `WHERE rn = 1` directly in the query defining `rn`.
- Why incorrect: SQL execution order evaluates WHERE before window functions, so `rn` does not exist yet when WHERE executes.
- Correction: Wrap the window function query in a derived table: `SELECT * FROM (...) t WHERE rn = 1;`.

## Key Learning

`PARTITION BY` splits data into independent mini-tables. Window functions cannot be filtered in the same query's WHERE clause because of SQL execution order; they must be wrapped in a derived table or CTE.
