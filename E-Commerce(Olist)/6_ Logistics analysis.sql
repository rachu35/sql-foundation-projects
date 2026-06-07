-- Logistics analysis
-- 1. Average freight cost
SELECT
    ROUND(AVG(freight_value), 2) AS avg_freight_cost,
    ROUND(MAX(freight_value), 2) AS highest_freight_cost,
    ROUND(MIN(freight_value), 2) AS lowest_freight_cost
FROM olist.order_items;

-- 2. Delivery performance
SELECT
    ROUND(AVG(DATEDIFF(order_delivered_customer_date,order_purchase_timestamp)),2)
AS avg_delivery_days
FROM olist.orders
WHERE order_delivered_customer_date IS NOT NULL;

-- 3. Late delivery
SELECT
    COUNT(order_delivered_customer_date) AS total_deliveries,
    SUM(IF(order_delivered_customer_date > order_estimated_delivery_date, 1, 0)) AS total_late_deliveries,
    SUM(IF(order_delivered_customer_date > order_estimated_delivery_date, 1, 0) * 100.0) / COUNT(order_delivered_customer_date) AS late_delivery_rate
FROM olist.orders
WHERE order_delivered_customer_date IS NOT NULL;

-- 4. Freight cost by product category
SELECT
    p.product_category_name AS product_category_name,
    pc.product_category_name_english AS product_category_name_english,
    ROUND(AVG(oi.freight_value), 2) AS avg_freight_cost
FROM olist.order_items oi
JOIN olist.products p
    ON oi.product_id = p.product_id
JOIN olist.product_category pc
    ON p.product_category_name = pc.product_category_name
GROUP BY
    p.product_category_name, pc.product_category_name_english
ORDER BY avg_freight_cost DESC;

-- 5.Product weight vs freight
SELECT
    CASE
        WHEN p.product_weight_g < 500 THEN 'Light'
        WHEN p.product_weight_g < 2000 THEN 'Medium'
        ELSE 'Heavy'
    END AS weight_category,
    COUNT(oi.order_id) AS total_orders,
    ROUND(AVG(oi.freight_value), 2) AS avg_freight_cost
FROM olist.products p
JOIN olist.order_items oi
    ON p.product_id = oi.product_id
GROUP BY weight_category
ORDER BY avg_freight_cost DESC;