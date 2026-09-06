# SQL Joins

## Overview

Relational data joining across tables (`employees` and `departments`). Covers INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, table preservation, identifying unmatched records, and the crucial distinction between filtering in ON vs WHERE.

## Concepts Covered

- INNER JOIN: returns only matching rows (intersection)
- LEFT JOIN: preserves all rows from the left table, right table filled with NULL if no match
- RIGHT JOIN: preserves all rows from the right table, left table filled with NULL if no match
- FULL OUTER JOIN: preserves all rows from both tables
- SQL-89 comma join syntax vs modern ANSI explicit JOIN syntax
- Filtering in ON clause vs WHERE clause in outer joins
- Golden Interview Rule: A condition on the right table in WHERE after a LEFT JOIN turns it into an INNER JOIN
- Simulating FULL OUTER JOIN in MySQL using LEFT JOIN UNION RIGHT JOIN
- Finding missing/unmatched records using LEFT/RIGHT JOIN + IS NULL

## SQL Syntax Learned

```sql
SELECT e.name, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;
SELECT e.name, d.dept_name FROM employees AS e LEFT JOIN departments AS d ON e.dept_id = d.dept_id;
SELECT d.dept_name, e.name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id;
SELECT d.dept_name, e.name FROM employees e RIGHT JOIN departments d ON e.dept_id = d.dept_id;
SELECT e.name, d.dept_name FROM employees AS e FULL OUTER JOIN departments AS d ON e.dept_id = d.dept_id;
SELECT e.name, d.dept_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id UNION SELECT e.name, d.dept_name FROM employees e RIGHT JOIN departments d ON e.dept_id = d.dept_id;
SELECT e.name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id WHERE d.dept_id IS NULL;
SELECT d.dept_name FROM departments d LEFT JOIN employees e ON d.dept_id = e.dept_id WHERE e.dept_id IS NULL;
SELECT e.name, e.salary FROM employees e WHERE e.salary > (SELECT AVG(salary) FROM employees WHERE dept_id = e.dept_id);
```

## Notes

- Ethan has no department (`dept_id = NULL`), and Marketing (`104`) has no employees in the sample tables.
- INNER JOIN excludes Ethan and Marketing because `NULL = dept_id` is never TRUE.
- Modern SQL prefers ANSI explicit joins over SQL-89 comma joins because they are more readable, easier with multiple tables, and avoid accidental Cartesian products.
- Mental model: LEFT JOIN has a 'VIP pass' for the left table—all left rows survive. The ON clause only controls which right table rows attach. The WHERE clause filters the final result.
- RIGHT JOIN is rarely used in production (e.g. at Microsoft and Amazon) because every RIGHT JOIN can be rewritten as a more readable LEFT JOIN by swapping table order.
- MySQL does not support FULL OUTER JOIN directly; it is simulated by combining LEFT JOIN and RIGHT JOIN using `UNION` (which deduplicates matching rows, unlike `UNION ALL`).
- To find unmatched rows: preserve the table you care about (LEFT or RIGHT) and check `IS NULL` on the other table's key.

## Practice Summary

- **Number of problems**: 7
- **Number of corrections**: 3
- **Important learnings**: Mastered relational joins, table preservation mental models, MySQL FULL OUTER JOIN simulation via UNION, identifying missing records, and avoiding the trap of converting LEFT JOINs into INNER JOINs via the WHERE clause.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | INNER JOIN | [View Problem & Solution](./problems/001-Inner-Join/) |
| 002 | LEFT JOIN | [View Problem & Solution](./problems/002-Left-Join/) |
| 003 | RIGHT JOIN | [View Problem & Solution](./problems/003-Right-Join/) |
| 004 | FULL OUTER JOIN | [View Problem & Solution](./problems/004-Full-Outer-Join/) |
| 005 | Employees Without a Department | [View Problem & Solution](./problems/005-Employees-Without-A-Department/) |
| 006 | Departments With No Employees | [View Problem & Solution](./problems/006-Departments-With-No-Employees/) |
| 007 | Employees Earning More Than Their Department Average | [View Problem & Solution](./problems/007-Employees-Earning-More-Than-Department-Average/) |
