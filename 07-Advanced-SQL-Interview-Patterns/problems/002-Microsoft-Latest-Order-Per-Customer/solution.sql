SELECT customer_id,
       order_id,
       order_date,
       amount
FROM (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY customer_id
           ORDER BY order_date DESC, order_id DESC
         ) AS rnk
  FROM orders
) t
WHERE rnk = 1;
