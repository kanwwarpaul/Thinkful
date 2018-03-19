


WITH
	price_table
AS(
    SELECT
		substr(price, 2) Price
	FROM
		calendar
		)
	
	SELECT
		Month,
		AVG(CAST(Price as numeric)) Avg_Price
	FROM 
		price_table
	GROUP BY 1
	ORDER BY 2



   BUSIEST:

WITH
	avail_table
AS
	(
	SELECT
		strftime('%m', date) Month,
		(CASE WHEN available = 't' THEN 0 ELSE 1 END) availability
	FROM
		calendar
		)
	
	SELECT
		Month,
		AVG(availability) Percent_Availability
	FROM 
		avail_table
	GROUP BY 1
	ORDER BY 2