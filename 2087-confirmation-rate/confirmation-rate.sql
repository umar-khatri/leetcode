# Write your MySQL query statement below
SELECT s.user_id, COALESCE(ROUND(AVG(action = 'confirmed'), 2), 0 )as confirmation_rate
FROM Signups s Left Join Confirmations c using (user_id)
group by 1
