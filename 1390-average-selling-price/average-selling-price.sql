/* Write your T-SQL query statement below */
select 
p.product_id, isnull(round(sum(p.price*u.units)*1.00 / sum(u.units),2),0) as average_price
from prices p
left join unitssold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id
