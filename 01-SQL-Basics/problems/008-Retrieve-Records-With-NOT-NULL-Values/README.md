# Retrieve Records with NOT NULL Values

## Problem Statement

Retrieve all employees whose salary is NOT NULL.

## Goal

Retrieve all employees who have an existing, non-missing salary value.

## Solution Approach

Use `WHERE salary IS NOT NULL` to filter out rows with missing salaries.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Using `WHERE salary <> NULL` or `!= NULL` is incorrect because any comparison operator with NULL produces UNKNOWN, returning 0 rows. SQL operates on three-valued logic (TRUE, FALSE, UNKNOWN), and `IS NOT NULL` is the only standard way to check for presence of data.
