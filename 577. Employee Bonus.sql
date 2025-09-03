/* Write your T-SQL query statement below */

select *
from (
select name , bonus
from Employee left join  Bonus  on (Employee.empId = Bonus.empId ) 
) as tbl 
where bonus < 1000 or bonus is null 
  