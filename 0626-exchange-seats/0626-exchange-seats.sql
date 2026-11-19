select 
    case
        when id%2=1 and id = (select max(id) from seat) then id
        when id%2 =0 then id-1
        else id+1

    end id,
    student
from seat
order by id 

-- union
-- select max(id) id, max(student) 
-- from seat
-- order by id 