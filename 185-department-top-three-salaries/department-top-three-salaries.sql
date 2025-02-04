/* Write your T-SQL query statement below */
with cte as(
    select e.id as id ,d.name as  Department, e.name as employee, 
dense_rank() over(partition by e.departmentid order by e.salary desc) as rank
from employee e join
department d
on e.departmentid = d.id
)

select department, employee, salary from
cte c join employee e
on c.id = e.id
where rank <= 3