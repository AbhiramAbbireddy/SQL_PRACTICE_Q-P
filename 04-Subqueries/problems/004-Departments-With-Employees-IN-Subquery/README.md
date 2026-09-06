# Departments That Have Employees (IN Subquery)

## Problem Statement

Display the names of departments that have at least one employee. Hint: Use an IN subquery. Follow-up: What happens if you use NOT IN when employees has NULL dept_id?

## Goal

Use an IN subquery for set membership, and understand the NOT IN NULL trap.

## Solution Approach

Use `WHERE dept_id IN (SELECT DISTINCT dept_id FROM employees)`.

## Mistakes Made

- Typo in table name: `from department` instead of `from departments`.
- In follow-up on `NOT IN` with NULLs, guessed that it would return 'both null and unmatihed'.
- Why incorrect: `NOT IN` with a NULL in the subquery returns no rows at all because `val != NULL` evaluates to UNKNOWN, causing all row evaluations to fail.
- Correction: Use `NOT EXISTS` for NULL-safe anti-joins.

## Key Learning

`IN` checks membership in a set, so `DISTINCT` in the subquery is optional. `NOT IN` is dangerous with nullable subquery columns; always prefer `NOT EXISTS` in production.
