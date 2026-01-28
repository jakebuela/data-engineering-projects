template ONLY




-- analysis.sql
-- Customer Complaints Analytics

-- 1. Total number of complaints
SELECT COUNT(*) AS total_complaints
FROM customer_complaints;

-- 2. Complaints by product
SELECT 
    product,
    COUNT(*) AS total_complaints
FROM customer_complaints
GROUP BY product
ORDER BY total_complaints DESC;

-- 3. Complaints by state
SELECT 
    state,
    COUNT(*) AS total_complaints
FROM customer_complaints
GROUP BY state
ORDER BY total_complaints DESC;

-- 4. Timely response rate
SELECT 
    timely_response,
    COUNT(*) AS count
FROM customer_complaints
GROUP BY timely_response;

-- 5. Complaints by submission channel
SELECT 
    submitted_via,
    COUNT(*) AS total_complaints
FROM customer_complaints
GROUP BY submitted_via
ORDER BY total_complaints DESC;

-- 6. Average resolution time (days)
SELECT 
    AVG(date_received - date_submitted) AS avg_resolution_days
FROM customer_complaints
WHERE date_received IS NOT NULL;
