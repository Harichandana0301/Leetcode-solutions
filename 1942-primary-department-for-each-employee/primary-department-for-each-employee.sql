/* Write your T-SQL query statement below */
with cte as (
    select employee_id, count(department_id) as cnt_dept
    from employee
    group by employee_id
    having count(department_id) = 1
)

select employee_id , department_id 
from employee
where primary_flag = 'Y' or employee_id in (select employee_id  from cte)