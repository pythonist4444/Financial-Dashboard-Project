-- Query 3: Monthly Profit Trends (Identify Declines)
SELECT 
	Order_Month,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Total_Profit), 2) AS Total_Profit
FROM monthly_trends_cleaned
GROUP BY Order_Month
ORDER BY Order_Month;