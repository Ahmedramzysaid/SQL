/* Write your T-SQL query statement below */
select  tblp.query_name , tblp.quality  , isnull(round(f*1.0/total , 4) *100 , 0) as poor_query_percentage
from (
 select query_name  ,  round(avg(rating*1.0/position) ,2) as   quality  , count(*) as total
 from Queries  
 group by  query_name 
) as  tblp full outer join (
    select  query_name  ,   count(*) as f
    from   Queries 
    where rating < 3 
    group by query_name  
 
) as tbls  on (tblp.query_name  =  tbls.query_name)
