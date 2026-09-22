# Write your MySQL query statement below
select a1.machine_id, round(avg(a1.timestamp-a.timestamp),3) processing_time
from activity a
join
activity a1
on a.machine_id = a1.machine_id
and a.process_id = a1.process_id
and a.activity_type ='start'
and  a1.activity_type ='end'
group by a.machine_id
