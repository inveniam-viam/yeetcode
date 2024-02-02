-- 613 ms (beats 62.12% )
-- needs to be better optimized

WITH manager_reports AS
(
    SELECT e2.name
        , e2.id
        , count(e1.id) AS num_reports
    FROM Employee e1
    JOIN Employee e2
        ON e2.id = e1.managerId
    GROUP BY 1,2
)
SELECT name
FROM manager_reports
WHERE num_reports >= 5;
