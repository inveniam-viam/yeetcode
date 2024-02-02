-- 365ms (beats 87.83% users)


WITH start_end_times AS
(
    SELECT machine_id
        , process_id
        , activity_type
        , timestamp
        , LAG(timestamp) OVER (PARTITION BY machine_id, process_id ORDER BY timestamp ASC) AS timedelta
    from Activity
)
SELECT machine_id
     , ROUND(AVG(timestamp - timedelta), 3) AS processing_time
FROM start_end_times
WHERE timedelta IS NOT NULL
GROUP BY 1;
