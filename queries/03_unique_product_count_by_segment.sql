-- 3. Get the unique product count for each segment

SELECT 
    segment, 
    COUNT(DISTINCT product_code) AS product_count
FROM 
    dim_product
GROUP BY 
    segment
ORDER BY 
    product_count DESC;
