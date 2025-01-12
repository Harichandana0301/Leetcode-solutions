/* Write your T-SQL query statement below */
with cte as(
    select *, row_number() over(partition by customer_id order by order_date) as rn
    from delivery
)

select
round(sum(case when order_date = customer_pref_delivery_date then 1.0 else 0 end) *100 / count(customer_id),2) as immediate_percentage
from cte
where rn = 1
