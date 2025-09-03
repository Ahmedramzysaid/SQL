/* Write your T-SQL query statement below */
select tbl1.user_id , isnull(round(b/(a*1.0),2) ,0) as  confirmation_rate
from 
(
 select x.user_id ,  count(*) as a
from Signups  x  left outer join  Confirmations  y  on(x.user_id= y.user_id)
group  by  x.user_id
) as tbl1 left outer  join  (
select x.user_id ,  count(*) as b 
from Signups  x  inner join   Confirmations  y  on(x.user_id= y.user_id and y.action ='confirmed')
group  by  x.user_id
) as tabl2 on (tbl1.user_id =  tabl2.user_id)
order by confirmation_rate , tbl1.user_id desc
 


