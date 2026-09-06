# Retrieve Top N Highest-Paid Employees

## Problem Statement

Retrieve the top 3 highest-paid employees.

## Goal

Sort employees by salary descending and limit the output to the top 3 records.

## Solution Approach

Combine `ORDER BY salary DESC` with `LIMIT 3`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Different databases use different syntax for limiting rows: `LIMIT 3` in MySQL/PostgreSQL/SQLite, `SELECT TOP 3 *` in SQL Server, and `FETCH FIRST 3 ROWS ONLY` in Oracle 12c+. Simple LIMIT arbitrarily excludes tied rows at the cutoff; ranking functions like `RANK()` or `DENSE_RANK()` are needed to include ties.
