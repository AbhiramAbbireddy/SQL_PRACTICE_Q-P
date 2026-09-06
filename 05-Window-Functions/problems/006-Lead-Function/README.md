# LEAD() Function

## Problem Statement

Display Employee Name, Salary, and Next employee's salary using LEAD().

## Goal

Access the subsequent row's salary value using `LEAD()`.

## Solution Approach

Use `LEAD(salary) OVER (ORDER BY emp_id) AS next_salary`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`LEAD()` is the forward-looking counterpart to `LAG()`, looking ahead by an offset (default 1 row).
