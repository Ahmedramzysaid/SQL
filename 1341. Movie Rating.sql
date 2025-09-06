/* Write your T-SQL query statement below */
select results
from (
    select top(1) x.name as results
    from Users x
    join MovieRating y on x.user_id = y.user_id
    group by x.name
    order by count(y.user_id) desc, x.name
) t1
union all
select results
from (
    select top(1) x.title as results
    from Movies x
    join MovieRating y on x.movie_id = y.movie_id
    where year(y.created_at) = 2020 and month(y.created_at) = 2
    group by x.title
    order by avg(y.rating*1.0) desc, x.title
) t2;
