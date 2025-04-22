-- 7. Calculate monthly gross sales for the customer "Atliq Exclusive"
-- Helps analyze high and low-performing months

SELECT 
    EXTRACT(YEAR FROM fsm.date) AS year, 
    EXTRACT(MONTH FROM fsm.date) AS month, 
    ROUND(SUM(fgp.gross_price * fsm.sold_quantity), 2) AS gross_sales_amount
FROM 
    fact_sales_monthly fsm
JOIN 
    fact_gross_price fgp 
    ON fgp.product_code = fsm.product_code
JOIN 
    dim_customer dc 
    ON dc.customer_code = fsm.customer_code
WHERE 
    dc.customer = 'Atliq Exclusive'
GROUP BY 
    year, month
ORDER BY 
    year, month;
