/* Write your T-SQL query statement below */
select
stock_name, sum(case when operation = 'Buy' then -price 
when operation = 'sell' then price end) as capital_gain_loss
from stocks
group by stock_name
order by capital_gain_loss desc