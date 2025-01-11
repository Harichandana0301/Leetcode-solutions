/* Write your T-SQL query statement below */
SELECT *
FROM cinema c
where id%2 = 1
and description != 'boring'
order by rating desc