/* Write your T-SQL query statement below */
 with empmod as(
     select DENSE_rank() over(partition by departmentId order by salary desc ) as rank,
     id, name, salary, departmentId
     from Employee
 ) 

 select d.name as Department , e.name as Employee, e.Salary
 from empmod e join Department d
 on e.departmentId = d.id and rank <= 3