# Sort Employees by Salary

## Problem Statement

Part A: Retrieve all employees sorted by salary in ascending order. Part B: Retrieve all employees sorted by salary in descending order. Question: What happens to NULL values when you sort by salary?

## Goal

Sort the employee dataset in ascending and descending order of salary, and understand NULL sorting placement.

## Solution Approach

Use `ORDER BY salary` (or `ORDER BY salary ASC`) for ascending order, and `ORDER BY salary DESC` for descending order.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

ORDER BY defaults to ASC. Where NULLs appear depends on the database: in PostgreSQL and Oracle, NULLs appear last in ASC and first in DESC (customizable via `NULLS FIRST` / `NULLS LAST`). In MySQL and SQL Server, NULLs appear first in ASC and last in DESC.
