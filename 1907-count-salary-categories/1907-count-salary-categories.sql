# Write your MySQL query statement below
-- with cte as 
--             (select account_id,
--                 case
--                     when income > 50000 then "High Salary"
--                     when income between 20000 and 50000 then "Average Salary"
--                     else "Low Salary"
--                 end as category
--             from accounts)

-- select category, count(category) as accounts_count
-- from cte
-- group by category


select 'Low Salary' as category, count(case when income < 20000 then 0 end) as accounts_count from Accounts
uNION ALL
select 'Average Salary' as category, count(case when income between 20000 and 50000 then 0 end) as accounts_count from accounts
union all
select 'High Salary' as category, count(case when income > 50000 then 0 end) as accounts_count from accounts