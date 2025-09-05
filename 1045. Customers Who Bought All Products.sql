SELECT y.customer_id
FROM Product x
JOIN Customer y ON x.product_key = y.product_key
GROUP BY y.customer_id
HAVING COUNT(DISTINCT y.product_key) = (SELECT COUNT(*) FROM Product);
