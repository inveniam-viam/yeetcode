
-- beats 75% on execution runtime

WITH temp_and_lag AS
(
    SELECT *
        , LAG(recordDate, 1) OVER(ORDER BY recordDate) AS prev_date
        , LAG(temperature, 1) OVER(ORDER BY recordDate) AS lag_check
    FROM Weather
)
SELECT id
FROM temp_and_lag
WHERE temperature - lag_check > 0
AND DATEDIFF(recordDate, prev_date) < 2;
