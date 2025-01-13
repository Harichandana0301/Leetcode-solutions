/* Write your T-SQL query statement below */
select sell_date, count(product) as num_sold,
string_agg(product, ',') as products
from (select distinct sell_date,product from Activities) R
group by sell_date
order by sell_date
