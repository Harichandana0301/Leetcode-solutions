/* Write your T-SQL query statement below */
DELETE p1
from person p1, person p2
where p1.email = p2.email AND p1.id > p2.id