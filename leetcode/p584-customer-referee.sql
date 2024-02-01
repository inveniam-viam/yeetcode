-- Faster execution:
WITH cleanedCustomer AS
(
    SELECT id
         , name
         , COALESCE(referee_id, 0) AS referee_id
    FROM Customer
)
SELECT name
FROM cleanedCustomer
WHERE referee_id <> 2;

-- Regular joe, slower execution:

SELECT name 
FROM Customer 
WHERE referee_id IS NULL
OR referee_id <> 2;
