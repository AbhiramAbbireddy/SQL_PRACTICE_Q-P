# INNER JOIN

## Problem Statement

Display Employee name and Department name using an INNER JOIN. (Ethan with dept_id NULL and Marketing with no employees should not appear).

## Goal

Join `employees` and `departments` on matching `dept_id`.

## Solution Approach

Use `SELECT e.name, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

INNER JOIN returns only rows where the join condition evaluates to TRUE. Ethan is excluded because `NULL = dept_id` is UNKNOWN, and Marketing is excluded because it has no matching employees.
