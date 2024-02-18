
-- 1600 ms
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- 979 ms
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;
