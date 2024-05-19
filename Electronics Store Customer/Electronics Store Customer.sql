/* Electronics Store Customer */

/* Stage 1
Identify the pc_code, model, speed, and ram of PCs from the market database with 16 GB of RAM or more. 
Ensure the results are sorted primarily by ram in ascending order and secondarily by speed in 
descending order. The column order is essential. */

SELECT 
    pc_code, 
    model, 
    speed, 
    ram 
FROM PC
WHERE ram >= 16
ORDER BY 
    ram ASC,
    speed DESC;


/* Stage 2
Identify the average price of printers having the Inkjet type and C color from the 
Printer table. Round the result up to 2 decimal places. */

SELECT ROUND(AVG(price), 2) 
FROM Printer 
WHERE type = 'Inkjet' AND color = 'C';


/* Stage 3
Identify the total price of all laptop models produced by each maker.
Find the maker in the Product table and SUM of the prices in Laptop as total_price. 
Ensure the results are sorted by total_price in ascending order. 
Use GROUP_BY and SUM functions to solve this. */

SELECT Product.maker, SUM(Laptop.price) AS total_price
FROM Product
JOIN Laptop ON Product.model = Laptop.model
GROUP BY Product.maker
ORDER BY total_price ASC;


/* Stage 4
Identify manufacturers producing PCs and laptops, then count their production quantities. 
Find the maker in the Product table, COUNT the number of PC-type models it produces as 
pc_count, and COUNT the number of laptop-type models it produces as laptop_count. 
Use GROUP_BY and SUM functions to solve this task. The order of the columns matters. */

SELECT 
  maker,
  SUM(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) AS pc_count,
  SUM(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) AS laptop_count
FROM 
  Product
GROUP BY 
  maker
HAVING 
  SUM(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) > 0 AND
  SUM(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) > 0
;


/* Stage 5
Identify the laptops priced higher than any PC, including model, maker (Product table),
and price. Also, compute the differences: laptop vs. most expensive PC as price_difference_max_pc 
and laptop vs. average laptop price as price_difference_avg_laptop. 
The order of the columns matters. */

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


/* Stage 6
  Identify the second most expensive PCs based on the RAM capacity. Find the pc_code,
   model, speed, ram, hd, cd, and price from the PC table. 
   Use PARTITION BY to solve this challenge. 
   The order of the columns matters. */

SELECT pc_code, model, speed, ram, hd, cd, price
FROM (
    SELECT pc_code, model, speed, ram, hd, cd, price,
    ROW_NUMBER() OVER (PARTITION BY ram ORDER BY price DESC) AS rn
    FROM PC
) AS subquery
WHERE rn = 2;