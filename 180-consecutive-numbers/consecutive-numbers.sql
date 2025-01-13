/* Write your T-SQL query statement below */
with cte as (select *, lead(id,1) over(order by id)  as next_id,
lead(num,1) over(order by id)  as next_num,
lead(id,2) over(order by id)  as nextnex_id,
lead(num,2) over(order by id)  as nextnex_num
from logs)

select distinct num as ConsecutiveNums
from cte
where num = next_num and next_num = nextnex_num