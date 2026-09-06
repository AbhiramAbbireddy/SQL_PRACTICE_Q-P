# Salary Difference

## Problem Statement

Using LAG(), display Employee Name, Salary, Previous Salary, and Salary Difference.

## Goal

Calculate the delta between the current salary and the previous employee's salary.

## Solution Approach

Subtract `LAG(salary) OVER (ORDER BY emp_id)` from `salary`.

## Mistakes Made

- Forgot a comma separating `prev_salary` and the difference expression in the SELECT list; typo `diference`.
- Why incorrect: Missing comma between column projections causes a syntax error.
- Correction: Add comma after `prev_salary`.

## Key Learning

Window function expressions can be used directly in arithmetic operations in the SELECT list. For complex expressions, computing the window value once in a derived table is an optimization pattern.
