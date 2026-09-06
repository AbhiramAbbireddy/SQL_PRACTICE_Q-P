# Employees Earning More Than Department Average (Amazon Interview)

## Problem Statement

Find employees whose salary is greater than their department's average salary using CTEs (not correlated subqueries).

## Goal

Compute department averages in a CTE, join back to `employees`, and filter employees earning above their department's average.

## Solution Approach

Create CTE `dept_avg` with department averages via `GROUP BY dept_id`, join `employees e` with `dept_avg d` on `dept_id`, and filter `WHERE e.salary > d.dept_avg_salary`.

## Mistakes Made

- Wrote `WITH dept_avg AS (...) WITH ed_join AS (...)` repeating the `WITH` keyword.
- Why incorrect: In SQL, `WITH` is written only once. Multiple CTEs are separated by commas.
- Created an unnecessary second CTE (`ed_join`) and joined with `departments` table when `departments` was not needed.
- Used window functions inside the CTE instead of `GROUP BY`.

## Key Learning

Multiple CTEs are defined with a single `WITH` followed by comma-separated CTE blocks. Avoid unnecessary CTEs and joins when the base tables already provide the required fields.
