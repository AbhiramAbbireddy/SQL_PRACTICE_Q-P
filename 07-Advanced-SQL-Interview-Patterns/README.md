# Advanced SQL Interview Patterns

## Overview

Real-world interview challenges from Amazon, Microsoft, and Google combining window functions, partitioning, analytical functions, execution order, and deterministic tie-breaking rules.

## Concepts Covered

- Pattern recognition in technical interview problems
- Ranking distinct values (`DENSE_RANK()`) vs ranking rows (`ROW_NUMBER()`)
- Handling and clarifying salary ties in interviews
- Retrieving latest record per entity using `ROW_NUMBER() OVER (PARTITION BY ... ORDER BY ...)`
- Deterministic tie-breaking using secondary sort keys (e.g. `order_id DESC`)
- Time-series lag comparisons within entity partitions: `LAG() OVER (PARTITION BY ... ORDER BY ...)`
- Multi-metric single-scan analysis: combining multiple window functions in a derived table
- Why window function aliases cannot be referenced in the same SELECT list (execution order)

## SQL Syntax Learned

```sql
SELECT dept_id, name, salary FROM (SELECT *, DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rnk FROM employees) t WHERE rnk = 2;
SELECT customer_id, order_id, order_date, amount FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC, order_id DESC) AS rnk FROM orders) t WHERE rnk = 1;
SELECT product, sale_date, amount, prev_amount, amount - prev_amount AS difference FROM (SELECT *, LAG(amount) OVER (PARTITION BY product ORDER BY sale_date) AS prev_amount FROM sales) t;
SELECT name, dept_id AS dept, salary, dept_avg, rank, salary - dept_avg AS difference FROM (SELECT *, AVG(salary) OVER(PARTITION BY dept_id) AS dept_avg, ROW_NUMBER() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS rank FROM employees) t ORDER BY dept_id, salary DESC;
```

## Notes

- Clarifying ambiguity in interviews: When asked for 'second highest-paid employee', ask the interviewer: 'Do you mean the second highest employee, or employees earning the second highest distinct salary?'
- Tie-breakers: When ordering by dates where multiple records can share the same timestamp, adding `order_id DESC` makes the query deterministic.
- Analytics pattern: Combining `PARTITION BY <entity>` and `ORDER BY <date>` inside `LAG()` calculates row-by-row time deltas within each entity.
- Derived table execution order: Column aliases created in the SELECT list (like `dept_avg`) are not available to other expressions in the same SELECT list. Therefore, a derived table is necessary to compute variance like `salary - dept_avg`.
- Challenge #5 (Amazon SDE-2: Transaction Percentage Change) was presented at the end of the chat as the next practice challenge.

## Practice Summary

- **Number of problems**: 4
- **Number of corrections**: 1
- **Important learnings**: Mastered production-level SQL interview patterns: partitioned ranking with tie-handling, deterministic latest-record filtering, partitioned time-series lag comparisons, and single-scan multi-metric reporting.

## Problems in this Module

| Problem # | Problem Title | Solution Link |
| :--- | :--- | :--- |
| 001 | Amazon: Second Highest-Paid Employee in Each Department | [View Problem & Solution](./problems/001-Amazon-Second-Highest-Paid-Employee-Per-Department/) |
| 002 | Microsoft: Latest Order for Every Customer | [View Problem & Solution](./problems/002-Microsoft-Latest-Order-Per-Customer/) |
| 003 | Amazon: Previous Sale Amount & Difference | [View Problem & Solution](./problems/003-Amazon-Previous-Sale-Amount-And-Difference/) |
| 004 | Google: Department Average, Rank, and Difference | [View Problem & Solution](./problems/004-Google-Department-Average-Rank-And-Difference/) |
