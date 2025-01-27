/* Write your T-SQL query statement below */
with min_date as(
    select *,row_number() over (partition by customer_id order by order_date) as date
    from delivery
)

select
round(sum(case when order_date = customer_pref_delivery_date then 1.0 else 0 end) *100 / count(customer_id),2) as immediate_percentage
from min_date
where date = 1