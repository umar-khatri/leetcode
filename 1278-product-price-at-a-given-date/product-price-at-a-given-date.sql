#check for all 
SELECT DISTINCT Products.product_id, COALESCE(latestPrice.new_price, 10) AS price
FROM Products 

LEFT JOIN 

#latest prices
(SELECT product_id, new_price FROM Products
WHERE (product_id, change_date) IN 

#latest price change date
(SELECT product_id, MAX(change_date) AS change_date
FROM Products
WHERE change_date <= '2019-08-16'
GROUP BY product_id)) latestPrice

ON Products.product_id = latestPrice.product_id