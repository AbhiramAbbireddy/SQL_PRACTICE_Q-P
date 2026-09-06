# Advanced SQL Interview Patterns

## Overview

Real-world interview challenges from Amazon, Microsoft, and Google combining window functions, partitioning, analytical functions, execution order, and deterministic tie-breaking rules.

## Schema & Dataset

### 1. Challenges #1 & #4: Table `employees`
Used for Amazon Second Highest Salary and Google Multi-metric calculations.

| Column | Type | Description |
| :--- | :--- | :--- |
| `emp_id` | INT | Employee ID |
| `name` | VARCHAR | Employee name |
| `dept_id` | INT | Department ID |
| `salary` | INT | Salary amount |

#### Sample Data:
| emp_id | name | dept_id | salary |
| :--- | :--- | :--- | :--- |
| 1 | Alice | 101 | 55000 |
| 2 | Bob | 102 | 70000 |
| 3 | Charlie | 103 | 65000 |
| 4 | David | 102 | 90000 |
| 5 | Sarah | 102 | 120000 |
| 6 | John | 103 | 85000 |
| 7 | Andrew | 101 | 48000 |

---

### 2. Challenge #2: Table `orders`
Used for Microsoft Latest Order per Customer.

| Column | Type | Description |
| :--- | :--- | :--- |
| `order_id` | INT | Order ID |
| `customer_id` | INT | Customer ID |
| `order_date` | DATE | Date order was placed |
| `amount` | INT | Total order amount |

#### Sample Data:
| order_id | customer_id | order_date | amount |
| :--- | :--- | :--- | :--- |
| 1 | 101 | 2024-01-10 | 500 |
| 2 | 101 | 2024-02-15 | 700 |
| 3 | 102 | 2024-01-20 | 400 |
| 4 | 103 | 2024-03-12 | 900 |
| 5 | 102 | 2024-04-05 | 600 |
| 6 | 101 | 2024-05-01 | 300 |

---

### 3. Challenge #3: Table `sales`
Used for Amazon Time-Series Previous Sale & Difference.

| Column | Type | Description |
| :--- | :--- | :--- |
| `sale_id` | INT | Sale ID |
| `product` | VARCHAR | Product name |
| `sale_date` | DATE | Sale date |
| `amount` | INT | Sale transaction amount |

#### Sample Data:
| sale_id | product | sale_date | amount |
| :--- | :--- | :--- | :--- |
| 1 | Laptop | 2024-01-01 | 1000 |
| 2 | Laptop | 2024-01-15 | 1200 |
| 3 | Laptop | 2024-02-01 | 900 |
| 4 | Phone | 2024-01-10 | 500 |
| 5 | Phone | 2024-02-05 | 700 |
| 6 | Phone | 2024-03-01 | 650 |

---

### 4. Challenge #5 (Final Posed Challenge): Table `transactions`
Table presented for the percentage change challenge.

| Column | Type | Description |
| :--- | :--- | :--- |
| `txn_id` | INT | Transaction ID |
| `customer_id` | INT | Customer ID |
| `txn_date` | DATE | Transaction date |
| `amount` | INT | Transaction amount |

#### Sample Data:
| txn_id | customer_id | txn_date | amount |
| :--- | :--- | :--- | :--- |
| 1 | 101 | 2024-01-01 | 500 |
| 2 | 101 | 2024-01-05 | 700 |
| 3 | 101 | 2024-01-20 | 300 |
| 4 | 102 | 2024-01-02 | 900 |
| 5 | 102 | 2024-01-15 | 800 |
| 6 | 103 | 2024-01-10 | 1000 |

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
