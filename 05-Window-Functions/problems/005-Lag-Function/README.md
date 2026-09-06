# LAG() Function

## Problem Statement

Display Employee Name, Salary, and Previous employee's salary using LAG(). Follow-up: What does LAG(salary, 2) mean?

## Goal

Access the previous row's salary value using `LAG()`.

## Solution Approach

Use `LAG(salary) OVER (ORDER BY emp_id) AS prev_salary`.

## Mistakes Made

- Wrote `LAG(salary) OVER() AS prev_salary` without an ORDER BY clause.
- Why incorrect: SQL tables have no inherent order. Without ORDER BY, the database can pick any row as previous, making the result non-deterministic.
- Correction: Add `ORDER BY emp_id` inside `OVER()`.
- Used an unnecessary derived table when no filtering on `prev_salary` was required.

## Key Learning

`LAG()` requires an `ORDER BY` clause inside `OVER()` for deterministic results. The second parameter specifies offset: `LAG(salary, 2)` accesses the value from 2 rows prior.
