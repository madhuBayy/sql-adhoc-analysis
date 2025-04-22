-- 4. Identify the segment with the most increase in unique products in 2021 vs 2020

-- Step 1: Join dim_product with fact_sales_monthly to get segment, product_code, and fiscal_year
-- Step 2: Count distinct products for each segment and fiscal year
-- Step 3: Aggregate the counts into 2020 and 2021 columns for comparison
-- Step 4: Calculate the difference in product count between 2021 and 2020

SELECT 
    segment,
    SUM(CASE WHEN fiscal_year = 2020 THEN product_count ELSE 0 END) AS product_count_2020,
    SUM(CASE WHEN fiscal_year = 2021 THEN product_count ELSE 0 END) AS product_count_2021,
    SUM(CASE WHEN fiscal_year = 2021 THEN product_count ELSE 0 END) 
      - SUM(CASE WHEN fiscal_year = 2020 THEN product_count ELSE 0 END) AS difference
FROM (
    SELECT 
        dp.segment, 
        fsm.fiscal_year, 
        COUNT(DISTINCT fsm.product_code) AS product_count
    FROM 
        dim_product dp
    JOIN 
        fact_sales_monthly fsm 
        ON dp.product_code = fsm.product_code
    GROUP BY 
        dp.segment, fsm.fiscal_year
) AS yearly_product_counts
GROUP BY 
    segment;
