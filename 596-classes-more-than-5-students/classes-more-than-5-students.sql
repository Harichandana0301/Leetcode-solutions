/* Write your T-SQL query statement below */
with cte as(
    select class, count(distinct student) as students
    from courses
    group by class
)

select class from cte
where students >= 5