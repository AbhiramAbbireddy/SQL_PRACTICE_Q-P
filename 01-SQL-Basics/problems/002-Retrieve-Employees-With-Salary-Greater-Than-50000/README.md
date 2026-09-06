# Retrieve Employees with Salary Greater Than 50,000

## Problem Statement

Using the same `employees` table, write a query to retrieve all employees whose salary is greater than 50,000.

## Goal

Filter rows from the `employees` table where the `salary` column is strictly greater than 50,000.

## Solution Approach

Use `SELECT * FROM employees` with a `WHERE salary > 50000;` condition.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

In SQL, comparisons with NULL evaluate to UNKNOWN rather than TRUE. Rows with NULL salaries (such as Megan) are automatically filtered out by `WHERE salary > 50000` without needing an explicit `AND salary IS NOT NULL` condition.
