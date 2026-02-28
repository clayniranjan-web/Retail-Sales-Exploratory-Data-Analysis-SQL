----Date & Magnitude Exploration

--Find the date of the first and last order ever placed
	SELECT 
		MIN(order_date) AS first_order_date,
		MAX(order_date) AS last_order_date
	FROM Sales

--How many years of sales data are available?
	SELECT 
		MIN(order_date) AS first_order_date,
		MAX(order_date) AS last_order_date,
		DATEDIFF(YEAR, MIN(order_date), MAX(order_date)) AS Years_of_Sales
	FROM Sales

--Find the youngest and oldest customers by birthdate
	SELECT 
		MAX(birthdate) AS youngest_birthdate,
		DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS Youngest_age,
		MIN(birthdate) AS oldest_birthdate,
		DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS Oldest_age
	FROM Customers

--Find the total sales revenue across all time
	SELECT 
		SUM(sales_amount) AS total_sales_revenue,
		FORMAT(SUM(sales_amount), 'N2') AS formatted_total_sales_revenue
	FROM Sales

--Find the total number of items sold
	SELECT 
		SUM(quantity) AS total_items_sold,
		FORMAT(SUM(sales_amount), 'N2') AS total_revenue,
		FORMAT(AVG(price), 'N2') AS Avg_Selling_Price
	FROM Sales

--Find the average selling price across all products
	SELECT 
		ROUND(AVG(price), 2) AS average_Selling_Price,
		MIN(price) AS minimum_price,
		MAX(price) AS maximum_price
	FROM Sales

--Find the total number of distinct orders
	SELECT 
		COUNT(DISTINCT order_number) AS total_distinct_orders 
	FROM Sales

--Find the total number of products in the catalog
	SELECT 
		COUNT(product_key) AS total_products
	FROM Products

--Find the total number of customers
	SELECT 
		COUNT(customer_key) AS total_customers
	FROM Customers

--Find the total number of customers who have placed at least one order
	SELECT 
		COUNT(DISTINCT s.customer_key) Customers_with_atleast_one_order,
		COUNT(DISTINCT c.customer_key) Total_Customers,
		COUNT(DISTINCT s.customer_key)*100 / COUNT(DISTINCT c.customer_key) Active_Customer_Rate
		FROM Customers AS c
	LEFT JOIN Sales AS s
	ON c.customer_key = s.customer_key