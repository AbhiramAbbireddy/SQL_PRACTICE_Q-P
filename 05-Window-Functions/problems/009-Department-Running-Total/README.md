# Department Running Total

## Problem Statement

Using PARTITION BY, calculate the running salary total within each department.

## Goal

Calculate cumulative salary totals that reset for each department partition.

## Solution Approach

Combine `PARTITION BY dept_id` and `ORDER BY emp_id` inside `SUM(salary) OVER (...)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Combining `PARTITION BY` and `ORDER BY` causes cumulative calculations to run independently within each partition and reset at partition boundaries.
