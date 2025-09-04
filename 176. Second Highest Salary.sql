SELECT 
    (SELECT TOP 1 salary
     FROM (
         SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS DN
         FROM Employee
     ) AS ranked
     WHERE DN = 2
    ) AS SecondHighestSalary;
