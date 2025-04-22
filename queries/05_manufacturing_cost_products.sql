-- 5. Retrieve products with the highest and lowest manufacturing costs

SELECT 
    fmc.product_code,
    dp.product, 
    fmc.manufacturing_cost
FROM 
    fact_manufacturing_cost fmc
JOIN 
    dim_product dp 
    ON fmc.product_code = dp.product_code
WHERE 
    fmc.manufacturing_cost = (SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost)
    OR
    fmc.manufacturing_cost = (SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost);
