/* Write your T-SQL query statement below */
select
 product_name  , sum(unit) as unit
from Products p
join Orders o
on p. product_id  = o.product_id 
where month(o.order_date) = 2 and year(o.order_date) = 2020
group by product_name
having sum(unit) >=100
order by product_name  desc