-- Customer Segment analysis
-- 1. Segment performance, which segment had better performance
    SELECT Segment,
            ROUND(SUM(Sales),2) as Total_Sales,
            SUM(Quantity) as Total_Quantity
    FROM superstore.superstorefixed
    GROUP BY Segment
    ORDER BY Total_Sales DESC;

-- 2. Average customer spending
    SELECT Customer_Name,
            ROUND(SUM(Sales),2) as Total_Sales,
            COUNT(DISTINCT Order_ID) as Order_Times,
            ROUND(ROUND(SUM(Sales),2) / COUNT(DISTINCT Order_ID),2) as Average_Spending
    FROM superstore.superstorefixed
    GROUP BY  Customer_Name
    ORDER BY Average_Spending DESC;
