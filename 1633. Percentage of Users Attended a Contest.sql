/* Write your T-SQL query statement below */
select 
    y.contest_id,
    round(
        count(distinct y.user_id) * 1.0 / (select count(*) from Users), 
        4
    ) * 100 as percentage
from Register y
group by y.contest_id
order by percentage desc , y.contest_id ;
