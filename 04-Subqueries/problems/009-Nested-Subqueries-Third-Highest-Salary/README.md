# Nested Subqueries - Third Highest Salary (Amazon-Style)

## Problem Statement

Display the employee(s) who earn the third highest distinct salary. Constraints: No LIMIT, No OFFSET, No window functions. Use only nested subqueries.

## Goal

Peel off the maximum salary at 3 successive nested subquery levels to find the 3rd highest distinct salary.

## Solution Approach

Nest 3 levels of `MAX(salary)` where salary is strictly less than the previous maximum.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Nested subqueries can find Nth distinct values, but the pattern does not scale to large N (like 100th highest salary). In modern SQL, window functions (`DENSE_RANK()`) provide a scalable solution.
