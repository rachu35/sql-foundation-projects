-- Profitability Analysis
-- 1. Category profitability
SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore.superstorefixed
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 2. Loss-making products
SELECT
    Product_Name,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore.superstorefixed
WHERE Profit < 0
GROUP BY Product_Name
ORDER BY Total_Profit ASC;

-- 3. Discount impact on profit
SELECT
    Discount,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(AVG(Profit),2) AS Average_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percentage,
    COUNT(Order_ID) AS Number_of_Orders
FROM superstore.superstorefixed
GROUP BY Discount
ORDER BY Profit_Margin_Percentage ASC;