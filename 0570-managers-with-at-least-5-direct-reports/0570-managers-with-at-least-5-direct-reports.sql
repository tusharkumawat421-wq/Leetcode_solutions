select e.name
from employee e
left join employee m
on e.id = m.managerid
group  by e.id, e.name
having count(m.managerid)>=5