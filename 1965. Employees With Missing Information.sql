select employee_id 
from (
 SELECT 
    CASE  
        WHEN f IS NULL THEN y  
        when y is null then f
    END AS employee_id
FROM (
    SELECT  
        y.employee_id AS f,  
        x.employee_id AS y
    FROM Employees x  
    FULL OUTER JOIN Salaries y  
        ON x.employee_id = y.employee_id
) tnlx
)  t1 
where  employee_id  is not null 
ORDER BY employee_id

