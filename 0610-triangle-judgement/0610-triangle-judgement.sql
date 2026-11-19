# Write your MySQL query statement below
-- select x,y,z,
--     case
--         when (x+y+z)%3=0 and sign(x+y+z) = 1 then "Yes"
--         else "No"
--     end triangle
-- from triangle


-- SELECT x, y, z,
--        IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
-- FROM Triangle;

SELECT x, y, z,
       CASE
           WHEN x + y > z
            AND x + z > y
            AND y + z > x
           THEN 'Yes'
           ELSE 'No'
       END AS triangle
FROM Triangle;