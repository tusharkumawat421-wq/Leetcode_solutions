# Write your MySQL query statement below
select distinct p.project_id, ROUND(avg(experience_years),2) as average_years
from project as p
left join
    employee as e
on p.employee_id = e.employee_id
group by project_id