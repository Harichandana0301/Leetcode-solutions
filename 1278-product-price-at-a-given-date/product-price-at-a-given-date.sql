/* Write your T-SQL query statement below */
with cte as(select product_id, max(case when change_date <= '2019-08-16' then change_date end)
as date
from Products
group by product_id)

select c.product_id, coalesce(new_price,10) as price
from cte c left join products p
on c.date = p.change_date and c.product_id = p.product_id

