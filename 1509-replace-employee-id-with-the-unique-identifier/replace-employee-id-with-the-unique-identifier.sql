# Write your MySQL query statement below
SELECT e.unique_id, t.name FROM Employees as t left join EmployeeUNI as e 
on t.id = e.id