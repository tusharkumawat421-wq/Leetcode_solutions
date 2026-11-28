-- # Write your MySQL query statement below
-- select e.event_day day, e.emp_id, 
-- from employees e
-- join
-- employees a
-- on e.emp_id = a.emp_id
-- and 
select event_day day, emp_id, sum(out_time-in_time) total_time
from employees
group by event_day, emp_id