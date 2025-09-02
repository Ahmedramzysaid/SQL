# Write your MySQL query statement below
select  Project.project_id ,  round(Avg(experience_years),2) as average_years 
from  Project ,  Employee 
where Employee.employee_id = Project. employee_id
group by  Project.project_id 