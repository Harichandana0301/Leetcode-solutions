/* Write your T-SQL query statement below */
SELECT p.product_id , coalesce(round(sum(p.price*u.units)*1.0/sum(u.units),2),0) as average_price
FROM Prices p
left join unitssold u
on p.product_id = u.product_id 
and u.purchase_date >= p.start_date
and u.purchase_date <= p.end_date
group by p.product_id 