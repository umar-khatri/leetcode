# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price from Sales as s Left Join Product as p
on s.product_id = p.product_id