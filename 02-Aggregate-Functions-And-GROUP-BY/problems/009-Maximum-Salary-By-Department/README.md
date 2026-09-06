# Maximum Salary by Department

## Problem Statement

Write a query to display `department` and `maximum_salary`. Challenge: Use a meaningful alias for the maximum salary column. Follow-up: Can we select employee name here?

## Goal

Find the maximum salary for each department with a clear alias.

## Solution Approach

Use `SELECT department, MAX(salary) AS maximum_salary FROM employees GROUP BY department;`.

## Mistakes Made

- Omitted the alias in the query: `select department, max(salary) from employees group by department;`.
- Why incorrect: The challenge specifically requested a meaningful alias.
- Correction: Add `AS maximum_salary`.

## Key Learning

Using aliases makes output column names clear. To display the employee name corresponding to the maximum salary in each department, simple GROUP BY is insufficient; a subquery, JOIN, or window function (`ROW_NUMBER()` or `RANK()`) is required.
