SELECT s.user_id,
       ROUND(
           COALESCE(c.confirmed_count / t.total_count, 0),
           2
       ) AS confirmation_rate
FROM Signups s
LEFT JOIN (
    SELECT user_id, COUNT(*) AS total_count
    FROM Confirmations
    GROUP BY user_id
) t
ON s.user_id = t.user_id
LEFT JOIN (
    SELECT user_id, COUNT(*) AS confirmed_count
    FROM Confirmations
    WHERE action = 'confirmed'
    GROUP BY user_id
) c
ON s.user_id = c.user_id;