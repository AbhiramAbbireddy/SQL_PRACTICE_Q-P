# Google: Department Average, Rank, and Difference

## Problem Statement

For every employee, display: Name, Department, Salary, Department Average Salary, Salary Rank within the department, Difference from Department Average. Rules: No CTE, no subqueries (beyond single derived table), One SELECT with derived table, use window functions only.

## Goal

Calculate both a department-wide aggregate average and an intra-department rank in a single derived table, computing salary variance in the outer query.

## Solution Approach

In derived table `t`, compute `AVG(salary) OVER (PARTITION BY dept_id) AS dept_avg` and `ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank`. In the outer SELECT, project columns, calculate `salary - dept_avg AS difference`, and order by `dept_id, salary DESC`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Multiple different window functions can be calculated in a single query scan. Because `dept_avg` is an alias created in the SELECT list, it cannot be referenced in the same SELECT list; wrapping in a derived table allows computing expressions on that alias.
