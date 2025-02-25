/* Write your T-SQL query statement below */
select u.user_id as buyer_id, min(u.join_date)  as join_date, count(Year(o.order_date)) as orders_in_2019
from Users u
left join orders o on u.user_id = o.buyer_id
and year(o.order_date) = 2019
group by u.user_id