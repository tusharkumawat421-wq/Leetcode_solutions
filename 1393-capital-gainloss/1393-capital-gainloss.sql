# Write your MySQL query statement below
-- select s.stock_name, (sum(t.price)-sum(s.price)) capital_gain_loss 
-- from stocks s
-- join
-- stocks t
-- on s.stock_name = t.stock_name
-- and s.operation = "Buy"
-- and t.operation = "Sell"
-- group by s.stock_name

SELECT stock_name,
       SUM(CASE
               WHEN operation = 'Buy' THEN -price
               ELSE price
           END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;