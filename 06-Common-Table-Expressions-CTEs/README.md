# Common Table Expressions (CTEs)

## Overview

Structuring multi-step queries using Common Table Expressions (`WITH` clause), comparing CTEs to derived tables and window functions, chaining multiple CTEs, schema awareness in relational queries, and knowing when to use CTEs vs simpler SQL constructs.

## Concepts Covered

- What is a CTE: named temporary result set defined with `WITH`
- Single CTE syntax and scope
- Multiple CTEs: writing `WITH` only once and separating definitions with commas
- Good use cases for CTEs: breaking complex queries with multiple logical steps into readable modules
- Poor use cases for CTEs: overcomplicating simple queries that can be solved with a single WHERE or scalar subquery
- Comparing CTE with `GROUP BY` vs CTE with window functions and `DISTINCT`
- Schema awareness: verifying which table owns each column before joining

## SQL Syntax Learned

```sql
WITH cte_name AS (SELECT ...) SELECT * FROM cte_name;
WITH dept_avg AS (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id) SELECT * FROM dept_avg WHERE avg_salary > 70000;
WITH dept_avg AS (SELECT dept_id, AVG(salary) AS dept_avg_salary FROM employees GROUP BY dept_id) SELECT e.name, e.department, e.salary FROM employees e JOIN dept_avg d ON e.dept_id = d.dept_id WHERE e.salary > d.dept_avg_salary;
WITH cte1 AS (...), cte2 AS (...) SELECT ... FROM cte1 JOIN cte2 ...;
```

## Notes

- CTEs are about organizing queries for readability and reusability, not changing underlying logic.
- You only write `WITH` once at the beginning. Chaining multiple CTEs requires commas: `WITH cte1 AS (...), cte2 AS (...) SELECT ...`.
- Using a window function with `SELECT DISTINCT` inside a CTE is less readable and less performant than a standard `GROUP BY` when only one row per department is needed.
- Schema awareness habit: Before writing a query, ask: Which table has column X? Which table has column Y? Which column connects them?
- If an interviewer explicitly asks for a CTE, they are testing syntax. If they do not specify, choose the simplest correct solution.

## Practice Summary

- **Number of problems**: 3
- **Number of corrections**: 3
- **Important learnings**: Mastered CTE syntax, multiple CTE chaining, choosing between GROUP BY and window functions inside CTEs, schema awareness across joined tables, and recognizing appropriate vs unnecessary CTE usage.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | Department Average Salary Filter (CTE) | [View Problem & Solution](./problems/001-Department-Average-Salary-Filter/) |
| 002 | Employees Earning More Than Department Average (Amazon Interview) | [View Problem & Solution](./problems/002-Employees-Above-Department-Average/) |
| 003 | Department With Highest Average Salary (Two CTEs) | [View Problem & Solution](./problems/003-Department-With-Highest-Average-Salary-Two-CTEs/) |
