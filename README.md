🚲 Retail Sales — Exploratory Data Analysis (SQL)

![SQL](https://img.shields.io/badge/SQL-Microsoft%20SQL%20Server-blue?style=flat&logo=microsoftsqlserver)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-Retail%20%7C%20Sales-orange)

---

📌 Project Overview

This project is a complete **Exploratory Data Analysis (EDA)** of a retail bike store database built entirely using **Microsoft SQL Server**. The goal is to explore, understand, and extract meaningful business insights from raw sales data — covering customers, products, and transactions spanning **7 years (2018–2024)** across **25 countries**.

This project demonstrates the ability to think like a data analyst — not just writing SQL queries, but asking the right business questions and deriving actionable insights from data.

---

🗃️ Database Structure

The database consists of **3 tables** with the following structure:

👥 Customers Table — 500 Records
| Column | Data Type | Description |
|---|---|---|
| customer_key | INT | Unique identifier (Primary Key) |
| customer_id | INT | Internal customer ID |
| customer_number | NVARCHAR | Formatted customer code |
| first_name | NVARCHAR | Customer first name |
| last_name | NVARCHAR | Customer last name |
| country | NVARCHAR | Customer country of origin |
| marital_status | NVARCHAR | M = Married, S = Single, NULL = Not provided |
| gender | NVARCHAR | M = Male, F = Female |
| birthdate | DATE | Customer date of birth |
| create_date | DATE | Account registration date |

📦 Products Table — 112 Records
| Column | Data Type | Description |
|---|---|---|
| product_key | INT | Unique identifier (Primary Key) |
| product_id | INT | Internal product ID |
| product_number | NVARCHAR | Formatted product code |
| product_name | NVARCHAR | Full product name |
| category_id | INT | Category identifier |
| category | NVARCHAR | Major division (Bikes, Components, Clothing, Accessories) |
| subcategory | NVARCHAR | Product subcategory |
| maintenance | NVARCHAR | Maintenance required (Yes/No) |
| cost | DECIMAL | Unit cost price |
| product_line | NVARCHAR | Product line (Road, Mountain, Touring, Standard) |
| start_date | DATE | Product launch date |

🧾 Sales Table — 3,000 Records
| Column | Data Type | Description |
|---|---|---|
| order_number | NVARCHAR | Order identifier |
| product_key | INT | Links to Products table |
| customer_key | INT | Links to Customers table |
| order_date | DATE | Date order was placed |
| shipping_date | DATE | Date order was shipped |
| due_date | DATE | Expected delivery date |
| sales_amount | DECIMAL | Total revenue for the line item |
| quantity | INT | Number of units ordered |
| price | DECIMAL | Selling price per unit |

---

🔗 Entity Relationship Diagram (ERD)

```
Customers                Sales                  Products
─────────────            ─────────────          ─────────────
customer_key ◄───────── customer_key            product_key
customer_id              product_key ──────────► product_key
customer_number          order_number            product_name
first_name               order_date              category
last_name                shipping_date           subcategory
country                  due_date                cost
marital_status           sales_amount            product_line
gender                   quantity
birthdate                price
create_date
```

---

🗂️ Project Structure

```
📁 Retail-Sales-Exploratory-Data-Analysis-SQL
│
├── 📄 README.md
│
├── 📄 01_database_exploration.sql
│       └── Explore tables, columns, countries, categories
│
├── 📄 02_date_magnitude_exploration.sql
│       └── Date ranges, KPIs, totals, counts
│
├── 📄 03_customer_segmentation.sql
│       └── Customers by country, gender, activation rate
│
├── 📄 04_product_performance.sql
│       └── Revenue by category, top & bottom products
│
├── 📄 customers.csv
├── 📄 products.csv
└── 📄 sales.csv
```

---

❓ Business Questions Answered

🗂️ Tier 1 — Database Exploration

1. Explore all tables (objects) in the database
2. Explore all columns and their data types across all tables
3. Explore all unique countries customers come from
4. Explore all product categories and subcategories — *The Major Divisions*

📅 Tier 2 — Date & Magnitude Exploration

5. Find the date of the first and last order ever placed
6. How many years of sales data are available?
7. Find the youngest and oldest customers by birthdate
8. Find the total sales revenue across all time
9. Find the total number of items sold
10. Find the average selling price across all products
11. Find the total number of distinct orders
12. Find the total number of products in the catalog
13. Find the total number of customers in the database
14. Find the total number of customers who have placed at least one order

👥 Tier 3 — Customer & Product Segmentation

15. Find the total number of customers by country
16. Find the total number of customers by gender
17. Find the total number of products by category
18. Find the average product cost within each category
19. Find the total revenue generated by each category

💰 Tier 4 — Performance & Rankings

20. Find the total revenue generated by each individual customer
21. Analyze the distribution of items sold across different countries
22. Identify the Top 5 products by total revenue generated
23. Identify the Bottom 5 products by total revenue — worst performers

---

🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft SQL Server** | Database engine |
| **SSMS** (SQL Server Management Studio) | Query writing and execution |
| **SQL** | Data exploration and analysis language |
| **Python** | Dataset generation (CSV files) |
| **GitHub** | Version control and portfolio sharing |

---

💡 Key SQL Concepts Used

| Concept | Usage |
|---|---|
| `SELECT`, `FROM`, `WHERE` | Basic data retrieval |
| `GROUP BY`, `ORDER BY` | Data aggregation and sorting |
| `JOIN`, `LEFT JOIN` | Combining tables |
| `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` | Aggregate functions |
| `COUNT(DISTINCT ...)` | Avoiding duplicate counting |
| `ISNULL()` | Handling NULL values |
| `CASE WHEN` | Transforming coded values into labels |
| `DATEDIFF()` | Calculating time differences |
| `FORMAT()` | Formatting numbers for readability |
| `OVER()` | Window functions for percentage calculations |
| `TOP N` | Limiting results for rankings |
| `CONCAT()` | Combining columns |
| `INFORMATION_SCHEMA` | Database metadata exploration |

---

📊 Dataset Overview

| Table | Records | Description |
|---|---|---|
| Customers | 500 | Customers from 25 countries worldwide |
| Products | 112 | 4 categories, 36 subcategories |
| Sales | 3,000 | Transactions spanning 2018–2024 |

**Realistic data characteristics:**
- Contains `NULL` values across multiple columns
- Includes duplicate order numbers (multi-line orders)
- Covers 25 countries across 5 continents
- Product costs range from $11 (accessories) to $2,960 (bikes)

---

▶️ How to Run This Project

1. Open **SQL Server Management Studio (SSMS)**
2. Create a new database:
```sql
CREATE DATABASE RetailSalesEDA;
```
3. Import the CSV files into their respective tables using the SSMS Import Wizard
4. Run the SQL scripts in order:
   - `01_database_exploration.sql`
   - `02_date_magnitude_exploration.sql`
   - `03_customer_segmentation.sql`
   - `04_product_performance.sql`

---

## 👤 Author

Clay Niranjan
- 💼 LinkedIn: https://www.linkedin.com/in/clay-niranjan-b4587b31b/
- 📧 Email: clayniranjan@gmail.com
- 🐙 GitHub: https://github.com/clayniranjan-web

---

## ⭐ If you found this project useful, please consider giving it a star!
