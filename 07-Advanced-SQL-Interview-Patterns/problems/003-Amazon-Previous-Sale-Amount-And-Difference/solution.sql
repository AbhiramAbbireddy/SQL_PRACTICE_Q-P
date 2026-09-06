-- Initial Attempt (column typos: date, sales_date)
-- SELECT product, date, amount, prev_amount, amount - prev_amount AS difference
-- FROM (SELECT *, LAG(amount) OVER (PARTITION BY product ORDER BY sales_date) AS prev_amount FROM sales) t;

-- Corrected Version
SELECT product,
       sale_date,
       amount,
       prev_amount,
       amount - prev_amount AS difference
FROM (
  SELECT *,
         LAG(amount) OVER (
           PARTITION BY product
           ORDER BY sale_date
         ) AS prev_amount
  FROM sales
) t;
