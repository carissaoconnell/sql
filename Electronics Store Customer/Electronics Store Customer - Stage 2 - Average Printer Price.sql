-- Stage 2
-- Average Printer Price

-- Identify the average price of printers having the Inkjet type and C color 
-- from the Printer table. Round the result up to 2 decimal places.

SELECT ROUND(AVG(price), 2) 
FROM Printer 
WHERE type = 'Inkjet' AND color = 'C';