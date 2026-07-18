# Write your MySQL query statement below
SELECT e1.name 
FROM Employee e1 join Employee e2
on e1.id = e2.managerId
group by e1.id
having count(*) >=5