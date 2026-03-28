----Database Exploration

--Explore all tables (objects) in the database
	SELECT * FROM INFORMATION_SCHEMA.TABLES

--Explore all columns and their data types across all tables
	SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS

<<<<<<< HEAD
--Explore all unique countries customers come from
	SELECT DISTINCT country FROM Customers

--Explore all product categories and subcategories — "The Major Divisions"
=======
--Explore all the unique countries customers come from
	SELECT DISTINCT country FROM Customers

--Explore all product categories and subcategories â€” "The Major Divisions"
>>>>>>> refs/remotes/origin/main
	SELECT DISTINCT category, subcategory FROM Products
