# Write your MySQL query statement below
select NAME, sum(t.amount) as BALANCE
from transactions t
join
users u
on t.account = u.account
group by u.account
having sum(t.amount)>10000