# EXISTS - Valid Department

## Problem Statement

Display employees who belong to a valid department using EXISTS, not IN. Interview Question: Why do we write SELECT 1 instead of SELECT *?

## Goal

Filter employees using a correlated EXISTS subquery.

## Solution Approach

Use `WHERE EXISTS (SELECT 1 FROM departments WHERE dept_id = e.dept_id)`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

`EXISTS` only checks whether the subquery returns at least one row; it ignores the actual columns projected. Using `SELECT 1` is standard convention to indicate checking for existence rather than retrieving data.
