# SQL Basics (Selection & Filtering)

## Overview

Foundational SQL data retrieval and filtering using the `employees` table. Covers selecting all or specific columns, filtering rows using comparison operators and BETWEEN, pattern matching with LIKE, handling NULL and NOT NULL records with three-valued logic, sorting rows with ORDER BY and handling NULL placement, and limiting result sets across different database engines.

## Concepts Covered

- SELECT statement and column projection (`SELECT *` vs explicit column lists)
- WHERE clause for conditional row filtering
- Comparison operators (`>`, `>=`, `<`, `<=`, `=`, `<>`, `!=`)
- BETWEEN operator (inclusive of lower and upper boundaries)
- LIKE operator and wildcards (`%` for zero or more characters, `_` for exactly one character)
- SQL standard string literal syntax (single quotes) vs DBMS-specific double quotes
- NULL value semantics and three-valued logic (TRUE, FALSE, UNKNOWN)
- Filtering NULLs with `IS NULL` and `IS NOT NULL` (and why `= NULL` or `<> NULL` fail)
- Sorting with ORDER BY (default ASC vs DESC)
- Database-dependent NULL sorting behavior (PostgreSQL/Oracle vs MySQL/SQL Server) and `NULLS FIRST` / `NULLS LAST`
- Limiting query results across database dialects (`LIMIT`, `TOP`, `FETCH FIRST N ROWS ONLY`) and tie-handling limitations

## SQL Syntax Learned

```sql
SELECT * FROM employees;
SELECT employee_id, name, department, salary FROM employees;
SELECT * FROM employees WHERE salary > 50000;
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;
SELECT * FROM employees WHERE name LIKE 'A%';
SELECT * FROM employees WHERE name LIKE '%n';
SELECT * FROM employees WHERE name LIKE '%an%';
SELECT * FROM employees WHERE salary IS NULL;
SELECT * FROM employees WHERE salary IS NOT NULL;
SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC;
ORDER BY salary ASC NULLS LAST;
ORDER BY salary DESC NULLS FIRST;
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
SELECT TOP 3 * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary DESC FETCH FIRST 3 ROWS ONLY;
```

## Notes

- Megan has a NULL salary in the sample dataset.
- Comparisons with NULL evaluate to UNKNOWN, not TRUE. Therefore, `WHERE salary > 50000` automatically excludes NULL rows without needing explicit `IS NOT NULL`.
- Standard SQL requires single quotes `'...'` for string literals. Double quotes `"..."` work by default in MySQL depending on SQL mode, but can cause syntax errors in PostgreSQL, Oracle, and SQL Server.
- LIKE wildcard mnemonic: `%` = many characters (zero or more), `_` = one character (exactly one).
- Three-valued logic: SQL comparisons have three outcomes: TRUE, FALSE, and UNKNOWN. WHERE clauses only return rows where the condition evaluates to TRUE.
- NULL ordering across databases: PostgreSQL and Oracle default to NULLs last in ASC, NULLs first in DESC. MySQL and SQL Server default to NULLs first in ASC, NULLs last in DESC.
- Simple LIMIT/TOP drops ties arbitrarily at the cutoff boundary. Returning all tied records requires ranking window functions.

## Practice Summary

- **Number of problems**: 10
- **Number of corrections**: 2
- **Important learnings**: Mastered basic row retrieval, filtering, string pattern matching with standard single quotes, proper NULL checking with IS NULL/IS NOT NULL under three-valued logic, deterministic sorting, and dialect-specific limit clauses.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | Retrieve All Employees | [View Problem & Solution](./problems/001-Retrieve-All-Employees/) |
| 002 | Retrieve Employees with Salary Greater Than 50,000 | [View Problem & Solution](./problems/002-Retrieve-Employees-With-Salary-Greater-Than-50000/) |
| 003 | Employees Within a Salary Range | [View Problem & Solution](./problems/003-Employees-Within-A-Salary-Range/) |
| 004 | Employees Whose Name Starts With 'A' | [View Problem & Solution](./problems/004-Employees-Whose-Name-Starts-With-A/) |
| 005 | Employees Whose Name Ends With 'n' | [View Problem & Solution](./problems/005-Employees-Whose-Name-Ends-With-N/) |
| 006 | Employees Whose Name Contains 'an' | [View Problem & Solution](./problems/006-Employees-Whose-Name-Contains-AN/) |
| 007 | Retrieve Records with NULL Values | [View Problem & Solution](./problems/007-Retrieve-Records-With-NULL-Values/) |
| 008 | Retrieve Records with NOT NULL Values | [View Problem & Solution](./problems/008-Retrieve-Records-With-NOT-NULL-Values/) |
| 009 | Sort Employees by Salary | [View Problem & Solution](./problems/009-Sort-Employees-By-Salary/) |
| 010 | Retrieve Top N Highest-Paid Employees | [View Problem & Solution](./problems/010-Retrieve-Top-N-Highest-Paid-Employees/) |
