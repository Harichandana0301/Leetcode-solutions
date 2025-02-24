/* Write your T-SQL query statement below */
select id, Jan as Jan_Revenue,feb as Feb_Revenue, mar as Mar_Revenue, apr as Apr_Revenue,may as May_Revenue, jun as Jun_Revenue, jul as Jul_Revenue, aug as Aug_Revenue, sep as Sep_Revenue, oct as Oct_Revenue, nov as Nov_Revenue,dec as Dec_Revenue
from department
PIVOT (
    sum(revenue)
    for month IN (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec)
)
as pivoted