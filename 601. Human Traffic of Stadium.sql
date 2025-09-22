
WITH ctf AS(
   
    SELECT *, id - ROW_NUMBER() OVER(ORDER BY id) groupID
    FROM Stadium
    WHERE people >= 100
)

SELECT id, visit_date, people
FROM ctf
WHERE groupID IN (
    SELECT groupID
    FROM ctf
    GROUP BY groupID
    HAVING COUNT(*) >=3
)
ORDER BY visit_date ASC