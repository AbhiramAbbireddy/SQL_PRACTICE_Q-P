# Departments With No Employees

## Problem Statement

Display all departments that have no employees.

## Goal

Find departments that have no matching records in the `employees` table.

## Solution Approach

Preserve `departments` with a LEFT JOIN to `employees` and filter where `e.dept_id IS NULL`.

## Mistakes Made

- Selected `e.name` instead of `d.dept_name`.
- Wrote `FROM employees e right JOIN departments d ... WHERE d.dept_id IS NULL;` checking `d.dept_id IS NULL`.
- Why incorrect: In a RIGHT JOIN with `departments` on the right, all rows from `departments` are preserved, so `d.dept_id` is never NULL. The condition `WHERE d.dept_id IS NULL` evaluates to false for all rows, returning 0 rows.
- Correction: Check `IS NULL` on the matching table's column: `WHERE e.dept_id IS NULL`.

## Key Learning

Interview Rule: When finding unmatched rows after an outer join, preserve the table you care about and check `IS NULL` on the other table's key.
