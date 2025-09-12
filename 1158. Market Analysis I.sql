/* Write your T-SQL query statement below */
select m.user_id as buyer_id   , m.join_date ,   isnull(orders_in_2019 , 0 ) as orders_in_2019
from (
select x.user_id  , count(y.buyer_id) as orders_in_2019
from  Users  x inner join Orders y on (x.user_id =  y.buyer_id and year(y.order_date )  = '2019')
group by x.user_id
) as tbl right outer join Users m  on (tbl.user_id = m.user_id ) 