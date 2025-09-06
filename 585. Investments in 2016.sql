/* Write your T-SQL query statement below */
WITH dup_loc AS
(
    SELECT a.pid
    FROM Insurance a
    JOIN Insurance b ON (a.lat=b.lat AND a.lon=b.lon AND a.pid<>b.pid)
)

SELECT ROUND(sum(tiv_2016),2) as tiv_2016 
FROM (
SELECT DISTINCT a.pid,a.tiv_2016 
FROM Insurance a
JOIN Insurance b ON (a.tiv_2015 = b.tiv_2015 AND a.pid<>b.pid)
WHERE a.pid NOT IN (SELECT pid FROM dup_loc)
) q