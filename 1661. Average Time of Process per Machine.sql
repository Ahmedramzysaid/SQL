/* Write your T-SQL query statement below */
select machine_id   ,  round(avg(processing_time), 3) as  processing_time
from (
 select machine_id  ,  (max(timestamp ) - min(timestamp ))as processing_time
from  Activity
group  by  machine_id  , process_id
) as tblx
group by   machine_id
order by  machine_id 


