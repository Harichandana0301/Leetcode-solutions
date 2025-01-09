/* Write your T-SQL query statement below */
SELECT
e.name, b.bonus
FROM 
employee e
LEFT JOIN
Bonus b
ON
e.empid = b.empid
where isnull(b.bonus,0) < 1000 