# Employees Within a Salary Range

## Problem Statement

Retrieve all employees whose salary is between 50,000 and 80,000 (inclusive). Challenge: Try using the BETWEEN operator.

## Goal

Retrieve all employee rows whose salary falls in the closed range [50000, 80000].

## Solution Approach

Use the `BETWEEN ... AND ...` operator on the `salary` column.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

In SQL, the `BETWEEN` operator is inclusive of both the lower and upper bounds. `salary BETWEEN 50000 AND 80000` is equivalent to `salary >= 50000 AND salary <= 80000`.
