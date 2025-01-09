WITH cte AS (
    SELECT 
        s.user_id,
        CASE 
            WHEN c.action = 'confirmed' THEN 1 
            ELSE 0 
        END AS confirmed
    FROM signups s
    LEFT JOIN confirmations c
        ON s.user_id = c.user_id
)
SELECT 
    user_id, 
    ROUND(AVG(CAST(confirmed AS FLOAT)), 2) AS confirmation_rate
FROM cte
GROUP BY user_id
ORDER BY user_id;
