# Write your MySQL query statement below
SELECT sell_date,count(distinct product) num_sold ,GROUP_CONCAT(distinct product) AS products
FROM activities
GROUP BY sell_date
order by sell_date