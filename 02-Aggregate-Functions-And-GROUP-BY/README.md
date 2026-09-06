# Aggregate Functions & GROUP BY

## Overview

Aggregation across rows, group-based analysis using GROUP BY, group filtering using HAVING, understanding SQL query execution order, and the Golden Interview Rule for NULL handling in aggregates.

## Concepts Covered

- Aggregate functions: `COUNT(*)`, `COUNT(column)`, `MAX()`, `MIN()`, `AVG()`, `SUM()`
- The Golden Interview Rule: Every aggregate function ignores NULL except `COUNT(*)`
- Difference between `COUNT(*)`, `COUNT(employee_id)`, and `COUNT(salary)`
- Aggregate scalar value (e.g. `MAX(salary)`) vs retrieving full employee details
- Grouping data using `GROUP BY`
- The rule of SELECT with GROUP BY: every column in the SELECT list must appear in GROUP BY or inside an aggregate function
- Filtering groups with `HAVING` vs filtering rows with `WHERE`
- SQL Execution Order: FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT
- Column aliasing rules (identifiers cannot contain unescaped single quotes)
- Finding group extremes using `GROUP BY ... ORDER BY ... LIMIT 1`

## SQL Syntax Learned

```sql
SELECT COUNT(*) FROM employees;
SELECT COUNT(column_name) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT department, COUNT(*) FROM employees GROUP BY department;
SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department HAVING COUNT(*) > 2;
SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;
SELECT department, MAX(salary) AS maximum_salary FROM employees GROUP BY department;
SELECT department, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY department HAVING COUNT(*) > 2;
SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city;
SELECT designation, COUNT(*) AS employee_count FROM employees GROUP BY designation;
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department ORDER BY avg_salary DESC LIMIT 1;
```

## Notes

- COUNT(*) counts every row in the table, regardless of whether any column contains NULL.
- COUNT(column) counts only non-NULL values in that specific column.
- AVG() is effectively calculated as SUM(column) / COUNT(column), not COUNT(*).
- Unaggregated columns not in GROUP BY cannot be included in the SELECT list in standard SQL because SQL does not know which value from the group to pick.
- Execution order explanation: WHERE runs before GROUP BY, so groups do not exist yet when WHERE executes. HAVING runs after GROUP BY, so it can filter groups.
- Golden Rule: Use WHERE to filter rows; use HAVING to filter groups.
- Aliases should not use single quotes (e.g., `AS emp's` is invalid because `'` denotes a string literal).

## Practice Summary

- **Number of problems**: 13
- **Number of corrections**: 6
- **Important learnings**: Mastered aggregate functions, group aggregation, the strict separation of WHERE and HAVING based on SQL execution order, the rule that all aggregates ignore NULL except COUNT(*), and finding group extremes.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | Count Total Employees | [View Problem & Solution](./problems/001-Count-Total-Employees/) |
| 002 | Find the Highest Salary | [View Problem & Solution](./problems/002-Find-The-Highest-Salary/) |
| 003 | Find the Lowest Salary | [View Problem & Solution](./problems/003-Find-The-Lowest-Salary/) |
| 004 | Find the Average Salary | [View Problem & Solution](./problems/004-Find-The-Average-Salary/) |
| 005 | Find the Total Salary Paid | [View Problem & Solution](./problems/005-Find-The-Total-Salary-Paid/) |
| 006 | Count Employees in Each Department | [View Problem & Solution](./problems/006-Count-Employees-In-Each-Department/) |
| 007 | Departments with More Than 2 Employees | [View Problem & Solution](./problems/007-Departments-With-More-Than-2-Employees/) |
| 008 | Average Salary by Department | [View Problem & Solution](./problems/008-Average-Salary-By-Department/) |
| 009 | Maximum Salary by Department | [View Problem & Solution](./problems/009-Maximum-Salary-By-Department/) |
| 010 | WHERE vs HAVING | [View Problem & Solution](./problems/010-WHERE-vs-HAVING/) |
| 011 | Employees Grouped by City | [View Problem & Solution](./problems/011-Employees-Grouped-By-City/) |
| 012 | Count Employees by Designation | [View Problem & Solution](./problems/012-Count-Employees-By-Designation/) |
| 013 | Department with the Highest Average Salary | [View Problem & Solution](./problems/013-Department-With-Highest-Average-Salary/) |
