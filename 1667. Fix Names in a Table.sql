
select  user_id ,   UPPER(SUBSTRING(name, 1, 1)) + lower(SUBSTRING(name, 2, LEN(name))) as name
from Users  
order by user_id

