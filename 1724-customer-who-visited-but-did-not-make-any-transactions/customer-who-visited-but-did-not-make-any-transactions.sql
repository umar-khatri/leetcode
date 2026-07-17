# Write your MySQL query statement below
select v.customer_id, count(*) as count_no_trans
From Visits v Left Join Transactions t
on v.visit_id = t.visit_id where t.transaction_id is null
group by v.customer_id