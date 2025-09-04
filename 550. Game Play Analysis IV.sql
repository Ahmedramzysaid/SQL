/* Write your T-SQL query statement below */
SELECT 
    ROUND(
        SUM(CASE WHEN a.event_date = DATEADD(DAY, 1, f.first_login) THEN 1 ELSE 0 END) * 1.0
        / COUNT(DISTINCT a.player_id), 
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) f
ON a.player_id = f.player_id;
