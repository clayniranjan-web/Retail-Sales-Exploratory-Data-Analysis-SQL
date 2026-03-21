----Database Exploration

--Explore all tables (objects) in the database
	SELECT * FROM INFORMATION_SCHEMA.TABLES

--Explore all columns and their data types across all tables
	SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS

--Explore all the unique countries customers come from
	SELECT DISTINCT country FROM Customers

--Explore all product categories and subcategories — "The Major Divisions"
	SELECT DISTINCT category, subcategory FROM Products
