/* Write your T-SQL query statement below */
select isnull(max(salary),null) as SecondHighestSalary from Employee
where salary < (select max(salary) as FirstHighestSalary from Employee)