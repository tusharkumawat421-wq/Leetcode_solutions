# Write your MySQL query statement below
-- with cte as 
--             (select account_id,
--                 case
--                     when income > 50000 then "High Salary"
--                     when income between 20000 and 50000 then "Average Salary"
--                     when income < 20000 then "Low Salary"
--                 end as category
--             from accounts)

-- select category, count(category) as accounts_count
-- from cte
-- group by category
-- union all
-- select 'Average Salary' as category, count(case when income between 20000 and 50000 then 0 end) as accounts_count from accounts
WITH cte AS (
    SELECT account_id,
        CASE
            WHEN income > 50000 THEN 'High Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            WHEN income < 20000 THEN 'Low Salary'
        END AS category
    FROM Accounts
),
categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)
SELECT c.category, COUNT(cte.account_id) AS accounts_count
FROM categories c
LEFT JOIN cte ON c.category = cte.category
GROUP BY c.category;


-- select 'Low Salary' as category, count(case when income < 20000 then 0 end) as accounts_count from Accounts
-- uNION ALL
-- select 'Average Salary' as category, count(case when income between 20000 and 50000 then 0 end) as accounts_count from accounts
-- union all
-- select 'High Salary' as category, count(case when income > 50000 then 0 end) as accounts_count from accounts