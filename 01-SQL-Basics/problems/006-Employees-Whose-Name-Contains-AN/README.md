# Employees Whose Name Contains 'an'

## Problem Statement

Retrieve all employees whose name contains the substring 'an' anywhere in the name.

## Goal

Match any employee whose `name` contains the substring 'an' at the beginning, middle, or end.

## Solution Approach

Use `WHERE name LIKE '%an%'` with `%` wildcards on both sides of 'an'.

## Mistakes Made

- Wrote `WHERE name LIKE "%an%";` using double quotes.
- Why incorrect: Double quotes are non-standard for string literals across major RDBMS engines (PostgreSQL, Oracle, SQL Server).
- Correction: Use single quotes: `WHERE name LIKE '%an%';`.

## Key Learning

Enclosing string patterns in single quotes is standard SQL. Case sensitivity of LIKE depends on DBMS collation (MySQL is often case-insensitive by default; PostgreSQL is case-sensitive, offering `ILIKE` for case-insensitive matching).
