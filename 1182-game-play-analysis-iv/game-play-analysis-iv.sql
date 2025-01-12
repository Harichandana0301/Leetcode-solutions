with cte as
(select player_id, min(event_date)as min_date from activity
group by player_id
)

select round(count(a.player_id)*1.0/count(c.player_id),2) as fraction
from cte c 
left join activity a
on c.player_id = a.player_id and datediff(day,c.min_date,a.event_date) = 1