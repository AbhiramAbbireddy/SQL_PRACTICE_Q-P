# Department with the Highest Average Salary

## Problem Statement

Find the department with the highest average salary.

## Goal

Combine grouping, aggregation, sorting, and row limiting to find the top aggregated group.

## Solution Approach

Group by `department`, calculate `AVG(salary) AS avg_salary`, order by `avg_salary DESC`, and `LIMIT 1`.

## Mistakes Made

- Wrote: `select department,max(avg_salary) from ( select department,avg(slary) as avg_salary) from employees group by department);`
- Why incorrect: Syntax errors with misplaced `FROM` clause, mismatched parentheses, and typo `slary`.
- Correction: Easiest solution avoids subqueries entirely: `GROUP BY department ORDER BY avg_salary DESC LIMIT 1;`.

## Key Learning

To find the single department with the highest aggregate value, the simplest interview-expected pattern is `GROUP BY ... ORDER BY ... DESC LIMIT 1`.
