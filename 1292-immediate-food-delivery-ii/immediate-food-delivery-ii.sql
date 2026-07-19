WITH first_orders AS(
    SELECT customer_id, MIN(order_date) AS order_date
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(AVG(d.order_date = customer_pref_delivery_date)*100, 2) AS immediate_percentage
FROM Delivery d JOIN first_orders f 
ON d.customer_id = f.customer_id AND d.order_date = f.order_date
