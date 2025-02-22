/* Write your T-SQL query statement below */


with cte as (
select e.id as empid , e.name as Employee , e.salary as Salary, d.name as Department, DENSE_RANK() OVER (PARTITION BY d.name ORDER BY SALARY DESC) as sal_rank  
     from employee e
    join department d on e.departmentId = d.id )

    select Department, Employee, Salary from cte 
    where sal_rank = 1