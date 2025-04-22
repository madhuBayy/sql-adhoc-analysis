-- 6. Get the top 5 customers who received the highest average pre-invoice discount
-- for the fiscal year 2021 in the Indian market

SELECT 
    fpid.customer_code, 
    dc.customer, 
    AVG(fpid.pre_invoice_discount_pct) AS avg_discount
FROM 
    fact_pre_invoice_deductions fpid
JOIN 
    dim_customer dc 
    ON fpid.customer_code = dc.customer_code
WHERE 
    fpid.fiscal_year = 2021 
    AND dc.sub_zone = 'India'
GROUP BY 
    fpid.customer_code, dc.customer
ORDER BY 
    avg_discount DESC
LIMIT 5;
