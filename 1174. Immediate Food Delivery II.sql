SELECT 
    round(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)*1.0 / count(*) , 4 ) * 100 as  immediate_percentage
FROM (
    SELECT  
        delivery_id, 
        customer_id,  
        order_date, 
        customer_pref_delivery_date,
        DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS dr
    FROM Delivery
) AS tbldr
WHERE dr = 1;