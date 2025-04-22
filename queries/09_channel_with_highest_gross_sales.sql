-- 9. Identify the channel that contributed the most gross sales in fiscal year 2021
-- and calculate its percentage of contribution to total gross sales

WITH channel_gross_sales AS (
    SELECT 
        dc.channel AS channel, 
        SUM(fsm.sold_quantity * fgp.gross_price) AS gross_sales_mln
    FROM 
        fact_sales_monthly fsm
    JOIN 
        fact_gross_price fgp 
        ON fsm.product_code = fgp.product_code
    JOIN 
        dim_customer dc 
        ON fsm.customer_code = dc.customer_code
    WHERE 
        fsm.fiscal_year = 2021
    GROUP BY 
        dc.channel
)
SELECT 
    channel, 
    gross_sales_mln, 
    ROUND(gross_sales_mln * 100 / (SELECT SUM(gross_sales_mln) FROM channel_gross_sales), 2) AS percentage 
FROM 
    channel_gross_sales
ORDER BY 
    gross_sales_mln DESC;
