# Write your MySQL query statement below
select s.product_id, p.product_name
from product as p
join
sales as s
on p.product_id = s.product_id
group by s.product_id,p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01'
   AND MAX(s.sale_date) <= '2019-03-31'