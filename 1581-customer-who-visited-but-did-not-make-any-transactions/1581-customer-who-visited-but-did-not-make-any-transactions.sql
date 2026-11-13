select v.customer_id, count(v.visit_id) count_no_trans
from visits v
left join transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id






-- # Write your MySQL query statement below
-- -- select v.customer_id,count(v.visit_id) count_no_trans
-- -- from visits v
-- -- left join 
-- -- transactions t
-- -- on v.visit_id = t.visit_id
-- -- where t.amount is null
-- -- group by v.customer_id

-- -- select v.customer_id,count(v.visit_id) count_no_trans
-- -- from visits v
-- -- left join 
-- -- transactions t
-- -- on v.visit_id = t.visit_id
-- -- where t.transaction_id is null
-- -- group by v.customer_id

-- select v.customer_id,count(v.visit_id) count_no_trans
-- from visits v
-- left join 
-- transactions t
-- on v.visit_id = t.visit_id
-- where v.visit_id not in (select visit_id from transactions)
-- group by v.customer_id