-- Regional analysis
-- 1. Region sales & profit
SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Percentage
FROM superstore.superstorefixed
GROUP BY Region
ORDER BY Profit_Margin_Percentage DESC;

-- 2. Top states in each region by sales
SELECT 
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.superstorefixed
GROUP BY State
ORDER BY Total_Sales DESC;