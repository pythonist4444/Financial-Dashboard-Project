CREATE TABLE monthly_trends_cleaned AS
SELECT 
	DATE_FORMAT(Order_Date, "%Y-%m") AS Order_Month,
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
WHERE Order_Date IS NOT NULL
GROUP BY DATE_FORMAT(Order_Date, "%Y-%m"), Region
ORDER BY Order_Month;