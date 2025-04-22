-- List the markets in which customer "Atliq Exclusive" operates its business in the APAC region.

SELECT DISTINCT market 
FROM dim_customer 
WHERE customer = 'Atliq Exclusive' AND Region = 'APAC';
