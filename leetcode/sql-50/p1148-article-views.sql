-- 791 ms
WITH author_viewer AS
(
    SELECT *
    FROM Views
    WHERE author_id = viewer_id
)
SELECT DISTINCT author_id AS id
FROM author_viewer
ORDER BY 1 ASC;

-- 748 ms

SELECT author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP BY 1
ORDER BY 1 ASC;

-- 1700 ms

SELECT DISTINCT author_id AS id 
FROM Views 
WHERE author_id = viewer_id
ORDER BY 1 ASC;
