/* Write your T-SQL query statement below */

with cte as(
    select requester_id as id
    from RequestAccepted

    union all
select accepter_id as a_id
    from RequestAccepted
)

select  Top 1 id , count(id) as num from cte
group by id
order by num desc