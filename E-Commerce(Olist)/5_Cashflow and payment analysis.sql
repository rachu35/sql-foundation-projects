-- Cashflow and payment analysis
-- 1. Payment method distribution
SELECT
payment_type,
COUNT(payment_type) AS total_payments
FROM olist.order_payments
GROUP BY payment_type
ORDER BY total_payments DESC;

-- 2. Revenue by payment type
SELECT
payment_type,
ROUND(SUM(oi.price),2) AS total_sales_revenue
FROM olist.order_items oi
JOIN olist.order_payments op ON oi.order_id = op.order_id
GROUP BY payment_type
ORDER BY total_sales_revenue DESC;

-- 3. Installment behavior
SELECT
payment_type,
COUNT(payment_type) AS total_payments,
AVG(payment_installments) AS total_installments
FROM olist.order_payments
GROUP BY payment_type
ORDER BY total_payments DESC;

-- 4. Average payment value
SELECT
payment_type,
COUNT(payment_type) AS total_payments,
ROUND(SUM(oi.price),2) AS total_sales_revenue,
ROUND(SUM(oi.price),2) / COUNT(payment_type) AS Average_payment_value
FROM olist.order_items oi
JOIN olist.order_payments op ON oi.order_id = op.order_id
GROUP BY payment_type
ORDER BY total_sales_revenue DESC;

-- 5. Payment value distributionorders
SELECT
    CASE
        WHEN payment_value < 50 THEN '0 - 50'
        WHEN payment_value < 100 THEN '50 - 100'
        WHEN payment_value < 500 THEN '100 - 500'
        ELSE '500+'
    END AS payment_range,
    COUNT(payment_type) AS total_orders
FROM olist.order_payments
GROUP BY payment_range
ORDER BY payment_range DESC;

