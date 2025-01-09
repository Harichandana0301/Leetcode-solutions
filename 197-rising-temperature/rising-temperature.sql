/* Write your T-SQL query statement below */
SELECT 
    today.id
FROM 
    weather yesterday
JOIN 
    weather today
ON 
    DATEDIFF(day, yesterday.recordDate, today.recordDate) = 1
WHERE 
    today.temperature > yesterday.temperature;
