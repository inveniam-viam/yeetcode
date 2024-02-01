
-- 2592ms (VERY BAD Solution)
SELECT products.product_name
     , sales.year
     , sales.price
FROM Sales sales
INNER JOIN Product products
    ON products.product_id = sales.product_id;

-- 1800ms (beats 85.62% solutions)

WITH sold_products AS
(
    SELECT product_id
    FROM Sales
    GROUP BY 1
)
SELECT products.product_name
     , sales.year
     , sales.price
FROM Product products
LEFT JOIN Sales sales
    ON sales.product_id = products.product_id
WHERE products.product_id IN (SELECT product_id FROM sold_products)

