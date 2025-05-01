-- Query 1: Regional Performance (High/Low Profit Regions)
SELECT 
	Region,
    Total_Sales,
    Total_Profit,
    ROUND((Total_Profit / Total_Sales * 100), 2) AS Profit_Margin
FROM sales_by_region_cleaned
ORDER BY Profit_Margin DESC;