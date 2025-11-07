#  SQL Queries Description – Sample Sales Project

A simple yet complete example of **SQL-based analytics** on a sales dataset — covering data extraction, transformation, and advanced querying in PostgreSQL.

This project demonstrates the use of SQL for data analysis and reporting.  
It includes five queries that apply key analytical techniques such as aggregations, CTEs, and window functions.


Below is a brief description of each SQL query included in this project.  
The queries were created using the **Sample Sales (Kaggle)** dataset, loaded into **PostgreSQL**.

## Dataset Overview

**Dataset reference:** [Sample Sales – Kaggle](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data)  
**Table name:** `sample_sales`

**Main columns:**
`Ordernumber`, `Quantityordered`, `Priceeach`, `Orderlinenumber`, `Sales`, `Orderdate`,  `Status`, `Qtr_id`, `Month_id`, `Year_id`, `Productline`, `Msrp`, `Productcode`,  `Customername`, `Phone`, `Addressline1`, `Addressline2`,`City`, `State`,  `Postalcode`, `Country`, `Territory`, `Contactlastname`,`Contactfirstname`, `Dealsize`

### 🔧 ETL Pipeline (Overview)
The dataset was loaded from Kaggle into PostgreSQL using a simple ETL pipeline:
1. Extracted the CSV with `pandas.read_csv()`
2. Transformed column names and data types
3. Loaded into PostgreSQL via `SQLAlchemy`

---

###  1. Top 10 Customers by Total Revenue
This query identifies the top 10 customers with the highest total revenue.  
It uses a **CTE** to aggregate total sales per customer and applies a **ranking function (RANK)** to order them from highest to lowest.

**Key concepts:** Aggregation, CTE, Ranking, Ordering.

---

###  2. Monthly Revenue per Product Line
This query calculates the total monthly revenue for each product line across different years.  
It helps visualize trends over time and understand which product lines perform best.

**Key concepts:** Grouping by multiple columns, Time-based aggregation, CTE.

---

###  3. Top 5 Orders per Customer
This query shows the top 5 highest-value orders for each customer.  
It uses a **window function (ROW_NUMBER)** to rank orders within each customer group.

**Key concepts:** Window functions, Partitioning, Ranking within groups.

---

###  4. Revenue per Country with Percentage of Total
This query displays the total revenue for each country and calculates its share of the total company revenue.  
It provides insight into which markets contribute the most to global sales.

**Key concepts:** Aggregation, Percentage of total, Window functions.

---

###  5. Customers Above Average Revenue
This query finds all customers whose total revenue is greater than the average revenue across all customers.  
It demonstrates the use of **multiple CTEs**, **aggregations**, and **comparisons** with global metrics.

**Key concepts:** Nested CTEs, Aggregation, Comparison with average, Ranking.

---

## 🧩 Skills Demonstrated
- SQL Aggregations and Joins  
- Common Table Expressions (CTEs)  
- Window Functions (RANK, ROW_NUMBER)  
- Data Transformation and ETL Design  
- PostgreSQL Query Optimization Basics  

---
✅ *This project is part of my Data Engineering portfolio – focused on SQL analytics and ETL design.*

