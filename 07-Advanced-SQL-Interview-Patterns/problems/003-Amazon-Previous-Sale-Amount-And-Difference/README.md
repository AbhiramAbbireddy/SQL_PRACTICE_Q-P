# Amazon: Previous Sale Amount & Difference

## Problem Statement

For every sale in the `sales` table, display: Product, Sale Date, Amount, Previous Sale Amount, and Difference from Previous Sale.

## Goal

Perform a partitioned chronological comparison to find the delta from each product's previous sale.

## Solution Approach

Use `LAG(amount) OVER (PARTITION BY product ORDER BY sale_date) AS prev_amount` in a derived table, then calculate `amount - prev_amount AS difference` in the outer query.

## Mistakes Made

- Column name typos: used `date` in SELECT and `sales_date` in ORDER BY instead of the schema column `sale_date`.
- Why incorrect: Mismatched column names with the provided `sales` table schema.
- Correction: Use the exact schema column name `sale_date`.

## Key Learning

Time-series calculations within categories require partitioning by the category (`product`) and sorting chronologically (`sale_date`).
