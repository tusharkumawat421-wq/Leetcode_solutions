-- # Write your MySQL query statement below
-- select max(num) num
-- from mynumbers
-- group by num
-- having count(*) = 1
-- order by num desc
-- limit 1
select max(num) num
from mynumbers
where num = (select max(num)
    from mynumbers
    group by num
    having count(*) =1
    order by num desc
    limit 1
)