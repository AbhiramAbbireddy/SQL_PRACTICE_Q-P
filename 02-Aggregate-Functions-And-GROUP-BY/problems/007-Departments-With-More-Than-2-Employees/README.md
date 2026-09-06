# Departments with More Than 2 Employees

## Problem Statement

Display the departments that have more than 2 employees. Challenge: Do not use WHERE. Think about why.

## Goal

Filter aggregated groups using `HAVING`.

## Solution Approach

Group by `department` and filter using `HAVING COUNT(*) > 2`.

## Mistakes Made

- Wrote `count()` instead of `COUNT(*)` in prompt.
- Why incorrect: In standard SQL, `COUNT` requires an argument (`*` or column).
- Correction: Use `COUNT(*)`.

## Key Learning

You cannot filter aggregate counts using `WHERE COUNT(*) > 2` because of SQL's execution order: `WHERE` executes before `GROUP BY` (before groups exist). `HAVING` executes after `GROUP BY`, allowing group-level filtering.
