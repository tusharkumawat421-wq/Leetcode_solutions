# Write your MySQL query statement below
SELECT COALESCE(
    (
        SELECT num
        FROM mynumbers
        WHERE num IS NOT NULL
        GROUP BY num
        HAVING COUNT(*) = 1
        ORDER BY num DESC
        LIMIT 1
    ),
    NULL
) AS num;

-- select num
-- from mynumbers
-- where num = (select num from mynumbers group by num having count(num)= 1 and max(num) order by num desc limit 1)
