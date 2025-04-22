-- 8. Identify the quarter in 2020 with the highest total sold quantity

SELECT 
    SUM(sold_quantity) AS total_sold_quantity,
    CASE
        WHEN MONTH(date) BETWEEN 1 AND 3 THEN 'Q1'
        WHEN MONTH(date) BETWEEN 4 AND 6 THEN 'Q2'
        WHEN MONTH(date) BETWEEN 7 AND 9 THEN 'Q3'
        WHEN MONTH(date) BETWEEN 10 AND 12 THEN 'Q4'
    END AS quarter
FROM 
    fact_sales_monthly
WHERE 
    YEAR(date) = 2020
GROUP BY 
    quarter
ORDER BY 
    total_sold_quantity DESC
LIMIT 1;
