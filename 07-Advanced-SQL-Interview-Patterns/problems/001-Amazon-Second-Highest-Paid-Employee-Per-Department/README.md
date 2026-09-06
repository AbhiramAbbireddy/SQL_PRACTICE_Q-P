# Amazon: Second Highest-Paid Employee in Each Department

## Problem Statement

Find the second highest-paid employee in each department using the `employees` table.

## Goal

Rank employees by salary within each department and return those in second position.

## Solution Approach

Use `DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rnk` inside a derived table, filtering `WHERE rnk = 2` in the outer query.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Using `DENSE_RANK()` correctly handles distinct salary ties so that all employees sharing the second highest distinct salary are returned. If the requirement strictly demands exactly one employee, `ROW_NUMBER()` with a deterministic tie-breaker (`ORDER BY salary DESC, emp_id`) is used.
