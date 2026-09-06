# Microsoft: Latest Order for Every Customer

## Problem Statement

For every customer, display only their latest order from the `orders` table. Rules: No MAX() with joins. Use a window function.

## Goal

Find the single most recent order per customer.

## Solution Approach

Partition by `customer_id`, order by `order_date DESC, order_id DESC` with `ROW_NUMBER() AS rnk` in a derived table, and filter `WHERE rnk = 1`.

## Mistakes Made

No mistakes were made for this problem.

## Key Learning

Adding `order_id DESC` as a secondary sorting column creates a deterministic tie-breaker when multiple orders occur on the exact same date for the same customer.
