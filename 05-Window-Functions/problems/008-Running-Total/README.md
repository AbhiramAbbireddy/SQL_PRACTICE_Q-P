# Running Total

## Problem Statement

Using a window function, calculate the running total of salaries.

## Goal

Calculate cumulative salary totals across rows ordered by `emp_id`.

## Solution Approach

Use `SUM(salary) OVER (ORDER BY emp_id) AS running_total`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`SUM(col) OVER (ORDER BY ...)` produces a cumulative sum where each row accumulates values from all preceding rows up to the current row.
