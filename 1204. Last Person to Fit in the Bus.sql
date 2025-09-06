/* Write your T-SQL query statement below */
select top(1) person_name
from (
    select person_name,
           turn,
           sum(weight) over (order by turn) as cumulative_weight
    from Queue
) q
where cumulative_weight <= 1000
order by turn desc;
