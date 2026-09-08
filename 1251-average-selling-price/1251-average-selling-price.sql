-- select p.product_id, 
-- round((p.sump/u.sumu),2)
-- from  (select product_id, sum(price) as sump
--         from prices
--         group by product_id) as p

-- Join (select product_id ,sum(units) as sumu
--         from unitssold
--         group by product_id) as u
-- on p.product_id = u.product_id
select p.product_id , ifnull(round(sum(p.price*u.units)/sum(u.units),2),0) as average_price
from prices p 
left join unitssold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id