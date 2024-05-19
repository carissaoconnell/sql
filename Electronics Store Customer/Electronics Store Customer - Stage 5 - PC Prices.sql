-- Stage 5
-- PC Prices

-- Identify the laptops priced higher than any PC, including model, 
-- maker (Product table), and price. Also, compute the differences: 
-- laptop vs. most expensive PC as price_difference_max_pc and laptop 
-- vs. average laptop price as price_difference_avg_laptop. 
-- The order of the columns matters.

WITH max_pc_price AS (
  SELECT MAX(price) AS max_price
  FROM PC
),
avg_laptop_price AS (
  SELECT AVG(price) AS avg_price
  FROM Laptop
)
SELECT
  Laptop.model,
  Product.maker,
  Laptop.price,
  max_pc_price.max_price - Laptop.price AS price_difference_max_pc,
  Laptop.price - avg_laptop_price.avg_price AS price_difference_avg_laptop
FROM
  Laptop
  JOIN Product ON Laptop.model = Product.model
  CROSS JOIN max_pc_price
  CROSS JOIN avg_laptop_price
WHERE
  Laptop.price > max_pc_price.max_price
ORDER BY
  Laptop.price DESC;