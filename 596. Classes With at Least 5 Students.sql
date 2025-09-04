/* Write your T-SQL query statement below */
select tbl.class
from (
    select  class     , count(*) as  cnt 
    from Courses 
    group  by class
) as tbl 
where cnt >= 5 