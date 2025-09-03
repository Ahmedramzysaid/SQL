SELECT MAX(earnings), COUNT(*)
FROM (
    SELECT salary * months AS earnings
    FROM Employee
) AS t
WHERE earnings = (
    SELECT MAX(salary * months) FROM Employee
);
