# Retrieve Records with NULL Values

## Problem Statement

Retrieve all employees whose salary is NULL. Hint: Don't use = NULL.

## Goal

Find employees where the `salary` column contains missing or unknown values.

## Solution Approach

Use `WHERE salary IS NULL` instead of equality comparison.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

In SQL, NULL represents missing or unknown information, not zero or empty text. Because a value is unknown, SQL cannot determine if it equals anything (even another NULL). Therefore, `salary = NULL` evaluates to UNKNOWN, which evaluates to false in a WHERE clause and returns 0 rows. You must use `IS NULL`.
