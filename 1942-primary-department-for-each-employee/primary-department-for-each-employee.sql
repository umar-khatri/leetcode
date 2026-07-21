# Write your MySQL query statement below
WITH Temp AS (
    SELECT employee_id, COUNT(department_id) AS cnt 
    FROM Employee 
    GROUP BY employee_id
    )
SELECT e.employee_id, e.department_id FROM Employee e LEFT JOIN Temp t 
USING(employee_id) 
WHERE t.cnt = 1 OR e.primary_flag = 'Y'