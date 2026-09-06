# Common Table Expressions (CTEs)

## Overview

Structuring multi-step queries using Common Table Expressions (`WITH` clause), comparing CTEs to derived tables and window functions, chaining multiple CTEs, schema awareness in relational queries, and knowing when to use CTEs vs simpler SQL constructs.

## Schema & Dataset

### Table 1: `employees`

| Column | Type | Description |
| :--- | :--- | :--- |
| `emp_id` | INT | Employee ID |
| `name` | VARCHAR | Employee name |
| `dept_id` | INT (nullable) | Department ID (Ethan has NULL) |
| `department` | VARCHAR (nullable) | Department name |
| `salary` | INT | Salary amount |
| `city` | VARCHAR | Office city |

#### Sample Data:
| emp_id | name | dept_id | department | salary | city |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | Alice | 101 | HR | 55000 | Hyderabad |
| 2 | Bob | 102 | IT | 70000 | Bangalore |
| 3 | Charlie | 103 | Finance | 65000 | Chennai |
| 4 | David | 102 | IT | 90000 | Bangalore |
| 5 | Sarah | 102 | IT | 120000 | Pune |
| 6 | John | 103 | Finance | 85000 | Chennai |
| 7 | Andrew | 101 | HR | 48000 | Hyderabad |
| 8 | Ethan | NULL | NULL | 45000 | Delhi |

### Table 2: `departments`

| Column | Type | Description |
| :--- | :--- | :--- |
| `dept_id` | INT | Department ID (Primary Key) |
| `dept_name` | VARCHAR | Department name |

#### Sample Data:
| dept_id | dept_name |
| :--- | :--- |
| 101 | HR |
| 102 | IT |
| 103 | Finance |
| 104 | Marketing |

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
