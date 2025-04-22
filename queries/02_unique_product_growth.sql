-- 2. Calculate the percentage increase in unique products sold in 2021 compared to 2020

-- CTE to count unique products in the year 2020
WITH unique_products_2020 AS (
    SELECT COUNT(DISTINCT product_code) AS unique_products_2020
    FROM fact_sales_monthly
    WHERE fiscal_year = 2020
),

-- CTE to count unique products in the year 2021
unique_products_2021 AS (
    SELECT COUNT(DISTINCT product_code) AS unique_products_2021
    FROM fact_sales_monthly
    WHERE fiscal_year = 2021
)

-- Final query to calculate percentage change in unique products from 2020 to 2021
SELECT 
    unique_products_2020, 
    unique_products_2021, 
    ROUND(
        (unique_products_2021 - unique_products_2020) / unique_products_2020 * 100, 
        2
    ) AS percentage_chg
FROM 
    unique_products_2020, 
    unique_products_2021;
