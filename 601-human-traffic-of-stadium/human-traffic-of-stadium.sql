/* Write your T-SQL query statement below */
with cte as (select 
id, visit_date, people, id - row_number() over (order by id) as cons
from stadium 
where people >=100 )

select id, visit_date, people
from cte 
where cons IN (
    select cons
    from cte
    group by cons
    having count(id) >=3
)