# Write your MySQL query statement below
WITH firstYear AS (
    SELECT product_id, MIN(year) AS first_year 
    FROM Sales
    GROUP BY product_id
    )
SELECT b.product_id, b.first_year, quantity, price FROM Sales a 
JOIN firstYear b 
ON a.product_id = b.product_id AND a.year = b.first_year