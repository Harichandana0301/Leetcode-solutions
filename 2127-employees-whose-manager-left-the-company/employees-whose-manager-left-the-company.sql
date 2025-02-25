/* Write your T-SQL query statement below */
select employee_id
from Employees 
where Salary < 30000 and manager_id NOT in
 (select  Employee_id
from Employees)
Order by employee_id