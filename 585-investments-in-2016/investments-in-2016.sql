/* Write your T-SQL query statement below */
with cte1 as(
select lat, lon, count(*) as latlong
from  Insurance
group by lat, lon),
cte2 as(
select tiv_2015, count(*) as tiv_2015_cnt
from  Insurance
group by tiv_2015) 

select round(sum(tiv_2016),2) as tiv_2016
from Insurance I
join cte1 c1
on c1.lat = I.lat and c1.lon = I.lon
join cte2 c2
on c2.tiv_2015 = I.tiv_2015
where latlong = 1 and tiv_2015_cnt >1