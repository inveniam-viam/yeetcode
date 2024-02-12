-- only beats 41% solutions (1089 ms)


SELECT user_id
     , COUNT(DISTINCT follower_id) AS followers_count
FROM Followers
GROUP BY 1;
