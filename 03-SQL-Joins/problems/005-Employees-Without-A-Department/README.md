# Employees Without a Department

## Problem Statement

Write a query to display employees who are not assigned to any department using a LEFT JOIN approach.

## Goal

Find unmatched employee rows after a LEFT JOIN.

## Solution Approach

Left join `employees` to `departments` and filter where `d.dept_id IS NULL`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Using `LEFT JOIN ... WHERE right_table.key IS NULL` is more robust than simply checking `WHERE dept_id IS NULL` because it catches both NULL foreign keys and orphaned foreign keys that do not exist in the referenced table.
