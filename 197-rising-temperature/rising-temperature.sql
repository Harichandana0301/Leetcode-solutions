/* Write your T-SQL query statement below */
select w1.id as id
from weather w1
join weather w2
on DATEDIFF(day,w2.recordDate, w1.recordDate) = 1
where w1.temperature > w2.temperature