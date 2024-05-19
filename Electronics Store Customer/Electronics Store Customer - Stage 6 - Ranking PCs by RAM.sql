-- Stage 6
-- Ranking PCs by RAM

-- Identify the second most expensive PCs based on the RAM capacity. 
-- Find the pc_code, model, speed, ram, hd, cd, and price from the PC table. 
-- Use PARTITION BY to solve this challenge. The order of the columns matters.

SELECT 
    pc_code, 
    model, 
    speed, 
    ram, 
    hd, 
    cd, 
    price
FROM (
    SELECT 
        pc_code, 
        model, 
        speed, 
        ram, 
        hd, 
        cd, 
        price,
    ROW_NUMBER() OVER (
        PARTITION BY ram 
        ORDER BY price 
        DESC) 
        AS rn
    FROM PC
) AS subquery
WHERE rn = 2;