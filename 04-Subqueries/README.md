# Subqueries

## Overview

Scalar subqueries, correlated subqueries, set membership using IN, existence testing using EXISTS/NOT EXISTS, the critical NOT IN NULL trap, derived tables (subqueries in the FROM clause), and nested subqueries.

## Schema & Dataset

### Table 1: `employees`

| Column | Type | Description |
| :--- | :--- | :--- |
| `emp_id` | INT | Employee ID |
| `name` | VARCHAR | Employee name |
| `dept_id` | INT (nullable) | Department ID (Ethan has NULL) |
| `salary` | INT | Salary amount |

#### Sample Data:
| emp_id | name | dept_id | salary |
| :--- | :--- | :--- | :--- |
| 1 | Alice | 101 | 55000 |
| 2 | Bob | 102 | 70000 |
| 3 | Andrew | 103 | 48000 |
| 4 | Ankit | 102 | 90000 |
| 5 | Sarah | 102 | 120000 |
| 6 | John | 103 | 85000 |
| 7 | Ethan | NULL | 45000 |

### Table 2: `departments`

| Column | Type | Description |
| :--- | :--- | :--- |
| `dept_id` | INT | Department ID |
| `dept_name` | VARCHAR | Department name |

#### Sample Data:
| dept_id | dept_name |
| :--- | :--- |
| 101 | HR |
| 102 | IT |
| 103 | Finance |
| 104 | Marketing |

## Concepts Covered

- Scalar subquery (executes once, returns a single value)
- Correlated subquery (executes once per outer row, references outer query attributes)
- Performance comparison: scalar subquery vs correlated subquery
- Finding Nth highest salary without LIMIT/OFFSET or window functions
- Difference between value, row, and distinct values
- Why LIMIT/OFFSET fails with duplicate top salaries
- IN operator for subquery membership and set evaluation
- The NOT IN NULL trap: why NOT IN fails when the subquery contains a NULL value
- EXISTS and NOT EXISTS operators (NULL-safe evaluation)
- Convention of using `SELECT 1` inside `EXISTS (...)`
- Derived tables (subqueries in the FROM clause / inline views) and requiring column aliases
- Nested subqueries (Amazon-style multi-level subqueries)

## SQL Syntax Learned

```sql
SELECT name, salary FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);
SELECT name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees);
SELECT name, salary FROM employees WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees));
SELECT dept_name FROM departments WHERE dept_id IN (SELECT DISTINCT dept_id FROM employees);
SELECT e.name FROM employees AS e WHERE EXISTS (SELECT 1 FROM departments WHERE dept_id = e.dept_id);
SELECT d.dept_name FROM departments AS d WHERE NOT EXISTS (SELECT 1 FROM employees WHERE dept_id = d.dept_id);
SELECT e.name, e.dept_id, e.salary FROM employees AS e WHERE salary = (SELECT MAX(salary) FROM employees WHERE dept_id = e.dept_id);
SELECT dept_id, avg_salary FROM (SELECT dept_id, AVG(salary) AS avg_salary FROM employees GROUP BY dept_id) t WHERE avg_salary > 70000;
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees)));
```

## Notes

- Scalar subqueries execute once and produce a single scalar value. They are generally much faster than correlated subqueries.
- Correlated subqueries depend on values from the outer query row, causing the subquery to run for every outer row.
- Terminology matters: 'Highest salary' = `MAX(salary)`; 'Employee with highest salary' = `WHERE salary = (SELECT MAX(...))`; 'Second highest distinct salary' = `MAX(< MAX())`; 'Second row after sorting' = `LIMIT 1 OFFSET 1`.
- `ORDER BY ... LIMIT 1 OFFSET 1` only skips 1 row, not 1 distinct salary rank, so it fails when top salaries are tied.
- `IN` behaves like set membership, so `DISTINCT` in the subquery is optional.
- `NOT IN` danger: if a subquery returns `(101, 102, NULL)`, then `103 NOT IN (...)` expands to `103 != 101 AND 103 != 102 AND 103 != NULL`. Because `103 != NULL` is UNKNOWN, the whole expression becomes UNKNOWN and no rows are returned. Always use `NOT EXISTS` instead.
- `EXISTS` only checks whether at least one row is returned; it does not care what is selected, making `SELECT 1` standard convention.
- Derived tables must have a table alias (e.g. `) t`), and all aggregated columns must have explicit aliases.

## Practice Summary

- **Number of problems**: 9
- **Number of corrections**: 3
- **Important learnings**: Mastered scalar and correlated subqueries, set testing with IN, the infamous NOT IN NULL trap and why NOT EXISTS is preferred in production, derived table aliasing, and multi-level nested queries.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | Scalar Subquery - Highest Salary | [View Problem & Solution](./problems/001-Scalar-Subquery-Highest-Salary/) |
| 002 | Employees Earning Above the Company Average | [View Problem & Solution](./problems/002-Employees-Earning-Above-Company-Average/) |
| 003 | Second Highest Salary | [View Problem & Solution](./problems/003-Second-Highest-Salary/) |
| 004 | Departments That Have Employees (IN Subquery) | [View Problem & Solution](./problems/004-Departments-With-Employees-IN-Subquery/) |
| 005 | EXISTS - Valid Department | [View Problem & Solution](./problems/005-EXISTS-Valid-Department/) |
| 006 | NOT EXISTS - Departments Without Employees | [View Problem & Solution](./problems/006-NOT-EXISTS-Departments-Without-Employees/) |
| 007 | Correlated Subquery - Highest Salary Per Department | [View Problem & Solution](./problems/007-Correlated-Subquery-Highest-Salary-Per-Department/) |
| 008 | Subquery in the FROM Clause (Derived Table) | [View Problem & Solution](./problems/008-Subquery-In-FROM-Clause-Derived-Table/) |
| 009 | Nested Subqueries - Third Highest Salary (Amazon-Style) | [View Problem & Solution](./problems/009-Nested-Subqueries-Third-Highest-Salary/) |
