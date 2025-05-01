-- Query 2: Categories with Negative Profit
SELECT
	Category,
    Region,
    Total_Sales,
    Total_Profit
FROM sales_by_region_cleaned
WHERE Total_Profit < 0;