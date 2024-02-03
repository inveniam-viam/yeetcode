-- beats 93% solutions on runtime

-- wouldn't recommend writing shitty one-liner code like this though personally

SELECT contest_id
     , ROUND(100*(COUNT(DISTINCT user_id) / (SELECT COUNT(DISTINCT user_id) FROM Users)), 2) AS percentage
FROM Register
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;
