-- Stage 4
-- PCs and Laptops

-- Identify manufacturers producing PCs and laptops, then count their production 
-- quantities. Find the maker in the Product table, COUNT the number of 
-- PC-type models it produces as pc_count, and COUNT the number of laptop-type 
-- models it produces as laptop_count. Use GROUP_BY and SUM functions to solve 
-- this task. The order of the columns matters.


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