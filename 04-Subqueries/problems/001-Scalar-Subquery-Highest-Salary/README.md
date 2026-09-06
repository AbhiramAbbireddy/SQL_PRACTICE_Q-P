# Scalar Subquery - Highest Salary

## Problem Statement

Find the employees whose salary is equal to the highest salary in the company.

## Goal

Retrieve employee name and salary for employees earning the company-wide maximum salary.

## Solution Approach

Use a scalar subquery `(SELECT MAX(salary) FROM employees)` in the WHERE clause.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

A scalar subquery returns exactly one single value and executes once, making it fast and efficient compared to row-by-row correlated subqueries.
