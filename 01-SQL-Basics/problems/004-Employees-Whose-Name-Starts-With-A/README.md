# Employees Whose Name Starts With 'A'

## Problem Statement

Retrieve all employees whose name starts with the letter 'A'. Challenge: Use the LIKE operator.

## Goal

Filter employee records where the first character of the `name` column is 'A'.

## Solution Approach

Apply the `LIKE` operator with the pattern `'A%'` to match names beginning with 'A' followed by any number of characters.

## Mistakes Made

- Wrote `WHERE name LIKE "A%";` using double quotes around the string literal.
- Why incorrect: In standard SQL and databases like PostgreSQL, Oracle, and SQL Server, double quotes denote identifiers (like column or table names), whereas string literals must use single quotes. Double quotes only work in MySQL depending on SQL mode.
- Correction: Replace double quotes with single quotes: `WHERE name LIKE 'A%';`.

## Key Learning

Always use single quotes for string literals in SQL to ensure standard compliance and cross-database portability.
