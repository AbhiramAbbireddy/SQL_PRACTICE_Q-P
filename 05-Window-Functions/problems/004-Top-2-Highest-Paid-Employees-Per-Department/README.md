# Top 2 Highest-Paid Employees in Each Department

## Problem Statement

Using ROW_NUMBER(), display the Top 2 highest-paid employees in each department. Follow-up: If asked for 'Top 2 salaries including ties', does ROW_NUMBER() work?

## Goal

Retrieve the top 2 employees per department using a derived table filter `rn <= 2`.

## Solution Approach

Calculate `ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS rn` in a derived table and filter `WHERE rn <= 2`.

## Mistakes Made

No mistakes in writing the query. In follow-up question, answered that ROW_NUMBER() would work for 'Top 2 salaries including ties' (corrected: DENSE_RANK() is required to avoid omitting tied employees).

## Key Learning

If an interviewer asks for 'Top N employees', use `ROW_NUMBER()`. If they ask for 'Top N distinct salaries', use `DENSE_RANK()`. That single word changes the solution.
