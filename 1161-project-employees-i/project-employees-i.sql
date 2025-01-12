/* Write your T-SQL query statement below */

select p.project_id, round(sum(experience_years) *1.0/count(project_id),2) as average_years
From project p
join employee e
on p.employee_id = e.employee_id 
group by p.project_id