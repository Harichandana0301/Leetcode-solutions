/* Write your T-SQL query statement below */
with cte as(
select * , sum(weight) over(order by turn) as sum_turn
from queue)

select TOP 1 person_name
from cte
where sum_turn <= 1000
order by sum_turn desc