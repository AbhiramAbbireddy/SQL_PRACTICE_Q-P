# Window Functions

## Overview

Ranking functions (ROW_NUMBER, RANK, DENSE_RANK), the OVER clause with PARTITION BY and ORDER BY, SQL execution order constraints on window functions, navigation functions (LAG, LEAD), running totals, and whole-partition vs running aggregations.

## Schema & Dataset

### Part 1: Ranking & Partitioning Dataset (`employees`)

| Column | Type | Description |
| :--- | :--- | :--- |
| `name` | VARCHAR | Employee name |
| `dept` / `department` | VARCHAR | Department name |
| `salary` | INT | Salary amount |

#### Base Data:
| name | dept | salary |
| :--- | :--- | :--- |
| Alice | HR | 55000 |
| Bob | IT | 70000 |
| Ankit | IT | 90000 |
| Sarah | IT | 120000 |
| Andrew | Finance | 48000 |
| John | Finance | 85000 |

#### Tied Salaries Scenario (Introduced for RANK / DENSE_RANK):
| name | dept | salary |
| :--- | :--- | :--- |
| Sarah | IT | 120000 |
| David | IT | 120000 |
| Ankit | IT | 90000 |
| Bob | IT | 70000 |

### Part 2: Analytical Functions Dataset (`employees`)

| Column | Type | Description |
| :--- | :--- | :--- |
| `emp_id` | INT | Sequential employee ID |
| `name` | VARCHAR | Employee name |
| `salary` | INT | Salary amount |

#### Sample Data:
| emp_id | name | salary |
| :--- | :--- | :--- |
| 1 | Alice | 55000 |
| 2 | Bob | 70000 |
| 3 | Charlie | 85000 |
| 4 | David | 90000 |
| 5 | Sarah | 120000 |

## Concepts Covered

- Golden Rule: Aggregate functions reduce rows; window functions preserve rows
- Structure of window functions: `FUNCTION() OVER (PARTITION BY ... ORDER BY ...)`
- Differences between `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`
- When to use each ranking function: Top N employees (`ROW_NUMBER`) vs Top N distinct salaries (`DENSE_RANK`) vs sports competition ranking (`RANK`)
- Window function execution order: why window functions cannot be filtered in the WHERE clause of the same query
- `PARTITION BY` as creating 'mini-tables' to evaluate window functions within groups
- Analytical navigation functions: `LAG()` and `LEAD()`
- Why ORDER BY inside OVER() is mandatory for deterministic LAG/LEAD calculations
- Optional parameters of LAG: `LAG(col, offset, default_value)`
- Cumulative / running totals using `SUM(col) OVER (ORDER BY ...)`
- Partitioned running totals using `SUM(col) OVER (PARTITION BY ... ORDER BY ...)`
- The Critical Rule inside OVER(): With ORDER BY = running calculation; Without ORDER BY = whole partition calculation

## SQL Syntax Learned

```sql
ROW_NUMBER() OVER (ORDER BY salary DESC)
RANK() OVER (ORDER BY salary DESC)
DENSE_RANK() OVER (ORDER BY salary DESC)
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC)
SELECT * FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS rn FROM employees) t WHERE rn <= 2;
LAG(salary) OVER (ORDER BY emp_id)
LAG(salary, 2) OVER (ORDER BY emp_id)
LAG(salary, 1, 0) OVER (ORDER BY emp_id)
LEAD(salary) OVER (ORDER BY emp_id)
SUM(salary) OVER (ORDER BY emp_id)
SUM(salary) OVER (PARTITION BY dept_id ORDER BY emp_id)
AVG(salary) OVER (PARTITION BY dept_id)
AVG(salary) OVER ()
```

## Notes

- Window function execution order: FROM -> WHERE -> GROUP BY -> HAVING -> Window Functions -> SELECT -> ORDER BY -> LIMIT.
- Because WHERE executes before Window Functions, attempting `WHERE rn = 1` in the same query fails with `Unknown column 'rn' in WHERE clause`. Must wrap in a derived table or CTE.
- Difference between ranking functions on ties (e.g. 120000, 120000, 90000):
-   - ROW_NUMBER: 1, 2, 3 (breaks ties, sequential)
-   - RANK: 1, 1, 3 (ties share rank, leaves gaps)
-   - DENSE_RANK: 1, 1, 2 (ties share rank, no gaps)
- Inside OVER():
-   - Level 1: `OVER()` -> Whole table
-   - Level 2: `OVER(PARTITION BY dept)` -> Whole department (no ORDER BY = static partition value)
-   - Level 3: `OVER(ORDER BY id)` -> Running value for whole table
-   - Level 4: `OVER(PARTITION BY dept ORDER BY id)` -> Running value within each department

## Practice Summary

- **Number of problems**: 10
- **Number of corrections**: 4
- **Important learnings**: Mastered ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, derived table wrapping due to execution order, LAG, LEAD, running totals, and the distinction between running and partition-wide window aggregations.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | ROW_NUMBER() | [View Problem & Solution](./problems/001-Row-Number/) |
| 002 | RANK() | [View Problem & Solution](./problems/002-Rank-Function/) |
| 003 | PARTITION BY Department | [View Problem & Solution](./problems/003-Partition-By-Department/) |
| 004 | Top 2 Highest-Paid Employees in Each Department | [View Problem & Solution](./problems/004-Top-2-Highest-Paid-Employees-Per-Department/) |
| 005 | LAG() Function | [View Problem & Solution](./problems/005-Lag-Function/) |
| 006 | LEAD() Function | [View Problem & Solution](./problems/006-Lead-Function/) |
| 007 | Salary Difference | [View Problem & Solution](./problems/007-Salary-Difference/) |
| 008 | Running Total | [View Problem & Solution](./problems/008-Running-Total/) |
| 009 | Department Running Total | [View Problem & Solution](./problems/009-Department-Running-Total/) |
| 010 | Department Average and Salary Difference (FAANG Interview Problem) | [View Problem & Solution](./problems/010-Department-Average-And-Salary-Difference/) |
