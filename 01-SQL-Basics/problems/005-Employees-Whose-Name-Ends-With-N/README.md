# Employees Whose Name Ends With 'n'

## Problem Statement

Retrieve all employees whose name ends with the letter 'n'.

## Goal

Filter employee records where the last character of the `name` column is 'n'.

## Solution Approach

Use `WHERE name LIKE '%n'` with the `%` wildcard preceding 'n' to match any characters before the ending 'n'.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

The `%` wildcard matches zero or more characters. Combining it at the start (`'%n'`) filters strings ending with 'n' (e.g., John, Brian, Alan).
