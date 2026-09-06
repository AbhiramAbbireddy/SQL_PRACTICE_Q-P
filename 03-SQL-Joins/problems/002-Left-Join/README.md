# LEFT JOIN

## Problem Statement

Display Employee name and Department name using a LEFT JOIN. Question: Why does Ethan appear in the result this time?

## Goal

Preserve all employee rows while matching department names where available.

## Solution Approach

Use `LEFT JOIN departments AS d ON e.dept_id = d.dept_id`.

## Mistakes Made

- Wrote `LEFT JOIN department AS d` (singular table name).
- Why incorrect: The schema table name is `departments` (plural).
- Correction: Use `LEFT JOIN departments AS d`.
- In bonus question (`AND d.dept_name = 'IT'` in ON clause), answered that Ethan and Alice would not appear.
- Why incorrect: In a LEFT JOIN, condition in `ON` only controls whether right-table rows match. All left-table rows (Ethan and Alice) still appear, with right-table columns set to NULL.

## Key Learning

A LEFT JOIN preserves every row from the left table. If no match exists in the right table, right-table columns are filled with NULL. Placing a right-table condition in `WHERE` turns a LEFT JOIN into an INNER JOIN, but placing it in `ON` preserves all left-table rows.
