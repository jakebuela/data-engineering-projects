SQL - Codes used:

-- Total complaints
SELECT COUNT(*) 
FROM customer_complaints


-- Complaints by product
SELECT product, COUNT(*)
FROM customer_complaints
GROUP BY product
ORDER BY COUNT(*) DESC;


-- Complaints by state
SELECT state, COUNT(*)
FROM customer_complaints
GROUP BY state
ORDER BY COUNT(*) DESC;


-- Timely response
SELECT timely_response, COUNT(*)
FROM customer_complaints
GROUP BY timely_response;
