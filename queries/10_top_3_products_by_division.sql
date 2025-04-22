-- 10. Top 3 products in each division with the highest total sold quantity in fiscal year 2021

WITH rank_sales AS (
    SELECT 
        dp.division AS division, 
        dp.product_code AS product_code, 
        dp.product AS product, 
        SUM(fsm.sold_quantity) AS sold_quantity,
        DENSE_RANK() OVER (PARTITION BY dp.division ORDER BY SUM(fsm.sold_quantity) DESC) AS rank_order
    FROM 
        dim_product dp
    JOIN 
        fact_sales_monthly fsm 
        ON dp.product_code = fsm.product_code
    WHERE 
        fsm.fiscal_year = 2021
    GROUP BY 
        dp.division, dp.product_code, dp.product
)
SELECT 
    division, 
    product_code, 
    product, 
    sold_quantity, 
    rank_order
FROM 
    rank_sales
WHERE 
    rank_order <= 3;
