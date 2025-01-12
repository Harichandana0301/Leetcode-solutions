/* Write your T-SQL query statement below */
with cte as (select
num , count(num) as nums
from MyNumbers
group by num
having count(num) = 1)

select max(num) as num
from cte