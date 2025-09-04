-- Get the second highest salary for each department
SELECT Department, Employee, Salary
FROM (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS rnk
    FROM Employee e
    INNER JOIN Department d ON e.departmentId = d.id
) AS ranked
WHERE rnk <=3;
