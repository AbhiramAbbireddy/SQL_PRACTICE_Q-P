# RANK()

## Problem Statement

Assign a rank based on salary using RANK(). Dataset includes tied salaries (Sarah 120000, David 120000).

## Goal

Assign ranks to employees, correctly showing tied ranks.

## Solution Approach

Use `RANK() OVER (ORDER BY salary DESC) AS rnk`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

In `RANK()`, tied rows share the same rank and a gap appears for subsequent rows (e.g. 1, 1, 3, 4). In `DENSE_RANK()`, tied rows share the rank with no gaps (1, 1, 2, 3). In `ROW_NUMBER()`, ties are broken sequentially (1, 2, 3, 4).
