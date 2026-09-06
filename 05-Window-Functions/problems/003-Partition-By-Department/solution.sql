-- Part 1: Row Number per Department
SELECT *,
       ROW_NUMBER() OVER (
         PARTITION BY department
         ORDER BY salary DESC
       ) AS row_no
FROM employees;

-- Part 2: Filtering Top 1 (Using Derived Table)
-- SELECT *
-- FROM (
--   SELECT *,
--          ROW_NUMBER() OVER (
--            PARTITION BY department
--            ORDER BY salary DESC
--          ) AS rn
--   FROM employees
-- ) t
-- WHERE rn = 1;
