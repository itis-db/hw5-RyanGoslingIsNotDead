SELECT 
    id,
    category,
    price,
    ROUND(AVG(price) OVER (PARTITION BY category), 2) AS avg_price_by_category,
    ROUND(price - AVG(price) OVER (PARTITION BY category), 2) AS price_deviation
FROM 
    products;
