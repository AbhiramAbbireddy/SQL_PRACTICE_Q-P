# FULL OUTER JOIN

## Problem Statement

Display Employee name and Department name using a FULL OUTER JOIN. Bonus question: Which popular database does not support FULL OUTER JOIN directly?

## Goal

Return all matching rows, employees without departments, and departments without employees.

## Solution Approach

Use `SELECT e.name, d.dept_name FROM employees AS e FULL OUTER JOIN departments AS d ON e.dept_id = d.dept_id;`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

FULL OUTER JOIN returns matching rows + unmatched left rows + unmatched right rows. MySQL does not support FULL OUTER JOIN natively; to simulate it in MySQL, combine a LEFT JOIN and a RIGHT JOIN with `UNION` (which removes duplicate matching rows).
