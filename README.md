# SQL Learning & Interview Preparation Repository

A structured, GitHub-ready repository documenting the complete SQL learning journey and interview preparation track based on practice sessions with an interactive SQL coach.

Every topic, problem, query, mistake, and learning in this repository reflects the exact learning history from the practice sessions.

---

## 📊 Repository Metrics

| Metric | Count |
| :--- | :--- |
| **Total Topics Completed** | 7 |
| **Total Practice Problems Solved** | 56 |
| **Total SQL Queries Written** | 56 |
| **Total Mistakes Corrected** | 22 |

---

## 🗺️ Learning Roadmap

The learning path follows a systematic progression from SQL basics to real FAANG / top-tier tech interview questions:

```
1. SQL Basics (Selection & Filtering)
   └── SELECT *, WHERE filtering, comparison operators, BETWEEN, LIKE patterns, NULL handling, ORDER BY, LIMIT
2. Aggregate Functions & GROUP BY
   └── COUNT(*), COUNT(col), MAX, MIN, AVG, SUM, GROUP BY, HAVING vs WHERE, execution order
3. SQL Joins
   └── INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, ON vs WHERE, NULL detection, MySQL simulation
4. Subqueries
   └── Scalar subqueries, correlated subqueries, IN, EXISTS, NOT EXISTS, the NOT IN NULL trap, derived tables, nested subqueries
5. Window Functions
   └── ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, derived table filters, LAG, LEAD, running totals, partition averages
6. Common Table Expressions (CTEs)
   └── Single CTEs, multiple chained CTEs, CTE vs GROUP BY vs window functions, schema awareness
7. Advanced SQL Interview Patterns
   └── Amazon, Microsoft, Google interview challenges: tie-breaking, chronological lag delta, multi-metric single scans
```

---

## 📂 Repository Structure

```text
SQL-Learning/
├── README.md
├── 01-SQL-Basics/
│   ├── README.md
│   └── problems/
│       ├── 001-Retrieve-All-Employees/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Retrieve-Employees-With-Salary-Greater-Than-50000/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Employees-Within-A-Salary-Range/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Employees-Whose-Name-Starts-With-A/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 005-Employees-Whose-Name-Ends-With-N/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 006-Employees-Whose-Name-Contains-AN/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 007-Retrieve-Records-With-NULL-Values/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 008-Retrieve-Records-With-NOT-NULL-Values/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 009-Sort-Employees-By-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 010-Retrieve-Top-N-Highest-Paid-Employees/
│       │   ├── README.md
│       │   └── solution.sql
├── 02-Aggregate-Functions-And-GROUP-BY/
│   ├── README.md
│   └── problems/
│       ├── 001-Count-Total-Employees/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Find-The-Highest-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Find-The-Lowest-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Find-The-Average-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 005-Find-The-Total-Salary-Paid/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 006-Count-Employees-In-Each-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 007-Departments-With-More-Than-2-Employees/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 008-Average-Salary-By-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 009-Maximum-Salary-By-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 010-WHERE-vs-HAVING/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 011-Employees-Grouped-By-City/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 012-Count-Employees-By-Designation/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 013-Department-With-Highest-Average-Salary/
│       │   ├── README.md
│       │   └── solution.sql
├── 03-SQL-Joins/
│   ├── README.md
│   └── problems/
│       ├── 001-Inner-Join/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Left-Join/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Right-Join/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Full-Outer-Join/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 005-Employees-Without-A-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 006-Departments-With-No-Employees/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 007-Employees-Earning-More-Than-Department-Average/
│       │   ├── README.md
│       │   └── solution.sql
├── 04-Subqueries/
│   ├── README.md
│   └── problems/
│       ├── 001-Scalar-Subquery-Highest-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Employees-Earning-Above-Company-Average/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Second-Highest-Salary/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Departments-With-Employees-IN-Subquery/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 005-EXISTS-Valid-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 006-NOT-EXISTS-Departments-Without-Employees/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 007-Correlated-Subquery-Highest-Salary-Per-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 008-Subquery-In-FROM-Clause-Derived-Table/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 009-Nested-Subqueries-Third-Highest-Salary/
│       │   ├── README.md
│       │   └── solution.sql
├── 05-Window-Functions/
│   ├── README.md
│   └── problems/
│       ├── 001-Row-Number/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Rank-Function/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Partition-By-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Top-2-Highest-Paid-Employees-Per-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 005-Lag-Function/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 006-Lead-Function/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 007-Salary-Difference/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 008-Running-Total/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 009-Department-Running-Total/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 010-Department-Average-And-Salary-Difference/
│       │   ├── README.md
│       │   └── solution.sql
├── 06-Common-Table-Expressions-CTEs/
│   ├── README.md
│   └── problems/
│       ├── 001-Department-Average-Salary-Filter/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Employees-Above-Department-Average/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Department-With-Highest-Average-Salary-Two-CTEs/
│       │   ├── README.md
│       │   └── solution.sql
├── 07-Advanced-SQL-Interview-Patterns/
│   ├── README.md
│   └── problems/
│       ├── 001-Amazon-Second-Highest-Paid-Employee-Per-Department/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 002-Microsoft-Latest-Order-Per-Customer/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 003-Amazon-Previous-Sale-Amount-And-Difference/
│       │   ├── README.md
│       │   └── solution.sql
│       ├── 004-Google-Department-Average-Rank-And-Difference/
│       │   ├── README.md
│       │   └── solution.sql
```

---

## 📑 Topics Completed Summary

### [1. SQL Basics (Selection & Filtering)](./01-SQL-Basics/)
- **Overview**: Foundational SQL data retrieval and filtering using the `employees` table. Covers selecting all or specific columns, filtering rows using comparison operators and BETWEEN, pattern matching with LIKE, handling NULL and NOT NULL records with three-valued logic, sorting rows with ORDER BY and handling NULL placement, and limiting result sets across different database engines.
- **Problems Solved**: 10
- **Mistakes Corrected**: 2
- **Key Milestone**: Mastered basic row retrieval, filtering, string pattern matching with standard single quotes, proper NULL checking with IS NULL/IS NOT NULL under three-valued logic, deterministic sorting, and dialect-specific limit clauses.

### [2. Aggregate Functions & GROUP BY](./02-Aggregate-Functions-And-GROUP-BY/)
- **Overview**: Aggregation across rows, group-based analysis using GROUP BY, group filtering using HAVING, understanding SQL query execution order, and the Golden Interview Rule for NULL handling in aggregates.
- **Problems Solved**: 13
- **Mistakes Corrected**: 6
- **Key Milestone**: Mastered aggregate functions, group aggregation, the strict separation of WHERE and HAVING based on SQL execution order, the rule that all aggregates ignore NULL except COUNT(*), and finding group extremes.

### [3. SQL Joins](./03-SQL-Joins/)
- **Overview**: Relational data joining across tables (`employees` and `departments`). Covers INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, table preservation, identifying unmatched records, and the crucial distinction between filtering in ON vs WHERE.
- **Problems Solved**: 7
- **Mistakes Corrected**: 3
- **Key Milestone**: Mastered relational joins, table preservation mental models, MySQL FULL OUTER JOIN simulation via UNION, identifying missing records, and avoiding the trap of converting LEFT JOINs into INNER JOINs via the WHERE clause.

### [4. Subqueries](./04-Subqueries/)
- **Overview**: Scalar subqueries, correlated subqueries, set membership using IN, existence testing using EXISTS/NOT EXISTS, the critical NOT IN NULL trap, derived tables (subqueries in the FROM clause), and nested subqueries.
- **Problems Solved**: 9
- **Mistakes Corrected**: 3
- **Key Milestone**: Mastered scalar and correlated subqueries, set testing with IN, the infamous NOT IN NULL trap and why NOT EXISTS is preferred in production, derived table aliasing, and multi-level nested queries.

### [5. Window Functions](./05-Window-Functions/)
- **Overview**: Ranking functions (ROW_NUMBER, RANK, DENSE_RANK), the OVER clause with PARTITION BY and ORDER BY, SQL execution order constraints on window functions, navigation functions (LAG, LEAD), running totals, and whole-partition vs running aggregations.
- **Problems Solved**: 10
- **Mistakes Corrected**: 4
- **Key Milestone**: Mastered ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, derived table wrapping due to execution order, LAG, LEAD, running totals, and the distinction between running and partition-wide window aggregations.

### [6. Common Table Expressions (CTEs)](./06-Common-Table-Expressions-CTEs/)
- **Overview**: Structuring multi-step queries using Common Table Expressions (`WITH` clause), comparing CTEs to derived tables and window functions, chaining multiple CTEs, schema awareness in relational queries, and knowing when to use CTEs vs simpler SQL constructs.
- **Problems Solved**: 3
- **Mistakes Corrected**: 3
- **Key Milestone**: Mastered CTE syntax, multiple CTE chaining, choosing between GROUP BY and window functions inside CTEs, schema awareness across joined tables, and recognizing appropriate vs unnecessary CTE usage.

### [7. Advanced SQL Interview Patterns](./07-Advanced-SQL-Interview-Patterns/)
- **Overview**: Real-world interview challenges from Amazon, Microsoft, and Google combining window functions, partitioning, analytical functions, execution order, and deterministic tie-breaking rules.
- **Problems Solved**: 4
- **Mistakes Corrected**: 1
- **Key Milestone**: Mastered production-level SQL interview patterns: partitioned ranking with tie-handling, deterministic latest-record filtering, partitioned time-series lag comparisons, and single-scan multi-metric reporting.

---

## 📈 Learning Progress

- **Phase 1: Basics & Fundamentals (Modules 1–2)**: Mastered basic projection, filtering, three-valued logic (`IS NULL`), sorting semantics, aggregate functions, and SQL query execution order (`FROM` → `WHERE` → `GROUP BY` → `HAVING` → `SELECT` → `ORDER BY` → `LIMIT`).
- **Phase 2: Relational Joins & Subqueries (Modules 3–4)**: Mastered table preservation mental models (`LEFT`/`RIGHT`/`FULL OUTER`), the `ON` vs `WHERE` distinction, scalar vs correlated subqueries, set membership with `IN`, safe anti-joins using `NOT EXISTS`, and avoiding the fatal `NOT IN (NULL)` trap.
- **Phase 3: Advanced Analysis & CTEs (Modules 5–6)**: Transitioned to professional SQL using `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `PARTITION BY`, analytical navigation (`LAG`/`LEAD`), running calculations, and structured CTE pipelines.
- **Phase 4: Real-world Tech Interview Challenges (Module 7)**: Solved complex interview problems from Amazon, Microsoft, and Google incorporating deterministic tie-breaking, time-series variance, and single-scan multi-metric calculations.
