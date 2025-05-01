-- Query 2: Monthly Sales Trend
SELECT
	DATE_FORMAT(Order_Date, "%Y-%m") AS Order_Month,
    Region,
	SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY DATE_FORMAT(Order_Date, "%Y-%m"), Region
ORDER BY Order_Month; 
