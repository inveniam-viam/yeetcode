-- only beats 66% of solutions on run time (1300 ms)

WITH intermediate AS
(
    SELECT prices.product_id
        , prices.start_date
        , prices.end_date
        , units.purchase_date
        , (prices.price * units.units) AS line_item_price
        , units.units
    FROM Prices prices
    LEFT JOIN UnitsSold units
        ON units.product_id = prices.product_id
        AND units.purchase_date BETWEEN prices.start_date AND prices.end_date
)
SELECT product_id
     , COALESCE(ROUND(SUM(line_item_price) / SUM(units), 2),0) AS average_price
FROM intermediate
GROUP BY 1;
