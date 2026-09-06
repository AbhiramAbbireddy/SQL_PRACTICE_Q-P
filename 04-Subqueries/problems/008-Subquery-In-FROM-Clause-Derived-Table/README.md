# Subquery in the FROM Clause (Derived Table)

## Problem Statement

Display `dept_id` and `average_salary` for only those departments whose average salary is greater than 70,000 using a derived table.

## Goal

Compute department averages in a FROM subquery, then filter the resulting derived table.

## Solution Approach

Compute `AVG(salary) AS avg_salary` grouped by `dept_id` inside the subquery `t`, then filter `WHERE avg_salary > 70000` in the outer query.

## Mistakes Made

- Wrote `select dept_id,avg(salary) from employees...` inside the subquery without aliasing `avg(salary)`.
- Why incorrect: The outer query referred to `avg_salary`, but the inner subquery had not named that column.
- Correction: Add `AS avg_salary` inside the subquery.

## Key Learning

Subqueries in the FROM clause (derived tables / inline views) require table aliases and explicit column aliases for computed expressions so the outer query can reference them.
