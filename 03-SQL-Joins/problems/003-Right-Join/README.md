# RIGHT JOIN

## Problem Statement

Using the same tables, write a query to display Department name and Employee name using a RIGHT JOIN such that the department with no employees (Marketing) appears.

## Goal

Preserve all departments including Marketing using a RIGHT JOIN (or equivalent LEFT JOIN).

## Solution Approach

To preserve departments using RIGHT JOIN, `departments` must be on the right: `FROM employees e RIGHT JOIN departments d ON e.dept_id = d.dept_id`.

## Mistakes Made

- Typo: wrote `e.dept_od` instead of `e.dept_id`.
- Reversed table order: wrote `FROM departments as d right join employees as e`, which made `employees` the preserved right table instead of `departments`.
- Why incorrect: Putting `employees` on the right preserves all employees (including Ethan), not departments (Marketing).
- Correction: Swap table order so `departments` is preserved: `FROM employees e RIGHT JOIN departments d` (or use recommended `FROM departments d LEFT JOIN employees e`).

## Key Learning

RIGHT JOIN preserves all rows from the right table. In production code, developers and companies like Microsoft and Amazon prefer rewriting RIGHT JOINs as LEFT JOINs by swapping table order for better readability.
