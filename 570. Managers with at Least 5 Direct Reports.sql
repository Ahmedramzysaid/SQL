SELECT a.name
FROM Employee a
JOIN Employee b
    ON a.id = b.managerID
GROUP BY a.id, a.name
HAVING COUNT(*) >= 5;
