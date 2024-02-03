-- p1934 Medium

-- only beats 42% runtime wise

WITH intermediate AS
(
    SELECT user_id
        , time_stamp
        , action
        , CASE WHEN action = 'timeout' THEN 0 ELSE 1 END AS timeout_or_confirmed
    FROM Confirmations
)
SELECT users.user_id
     , COALESCE(ROUND(SUM(intermediate.timeout_or_confirmed)/COUNT(intermediate.user_id),2),0) AS confirmation_rate
FROM Signups users
LEFT JOIN intermediate
    ON users.user_id = intermediate.user_id
GROUP BY 1
ORDER BY 2 ASC;
