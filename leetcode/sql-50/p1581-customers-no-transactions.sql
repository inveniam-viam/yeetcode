
-- not that great, 2570 ms

WITH customers_transactions AS
(
    SELECT visits.customer_id, transactions.visit_id
    FROM Visits visits
    LEFT JOIN Transactions transactions
    ON transactions.visit_id = visits.visit_id
)
SELECT customer_id, COUNT(COALESCE(visit_id,1)) AS count_no_trans
FROM customers_transactions
WHERE visit_id IS NULL
GROUP BY 1;

-- very minor change, 2343 ms (beats 70% of solutions)
-- need to see wtf is going on here lol

WITH customers_transactions AS
(
    SELECT visits.customer_id, transactions.visit_id
    FROM Visits visits
    LEFT JOIN Transactions transactions
    ON transactions.visit_id = visits.visit_id
    WHERE transactions.visit_id IS NULL
)
SELECT customer_id, COUNT(COALESCE(visit_id,1)) AS count_no_trans
FROM customers_transactions
GROUP BY 1;
