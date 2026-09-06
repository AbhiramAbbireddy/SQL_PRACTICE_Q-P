# Department Average and Salary Difference (FAANG Interview Problem)

## Problem Statement

Display Employee Name, Department, Salary, Department Average Salary, and Difference between employee salary and department average. Follow-up: What does AVG(salary) OVER (ORDER BY emp_id) compute?

## Goal

Compute the static department average alongside each employee row and calculate the salary variance.

## Solution Approach

Use `AVG(salary) OVER (PARTITION BY dept) AS dept_avg` in a derived table, then subtract `dept_avg` in the outer query.

## Mistakes Made

- Included an extra comma after `AS dept_avg,` before `FROM employees`.
- Included `ORDER BY emp_id` inside `OVER(PARTITION BY dept ORDER BY emp_id)`.
- Why incorrect: Adding `ORDER BY` turned the department average into a running average rather than the static department average for the whole department.
- Correction: Remove `ORDER BY emp_id` from inside `OVER()`.

## Key Learning

The Critical Rule: inside `OVER()`, WITH `ORDER BY` computes a running calculation row-by-row; WITHOUT `ORDER BY` computes a single static aggregate across the entire partition.
