# SQL_Retail_Sales_Analysis🛒 Retail Sales SQL Analysis Project

A complete SQL project analyzing retail sales data using MySQL.
This project demonstrates essential SQL skills such as filtering, aggregation, window functions, grouping, date functions, and analytical querying.

📁 Project Overview

The goal of this project is to perform exploratory and analytical SQL queries on a retail sales dataset.
The dataset includes fields such as:

transaction_id

sale_date, sale_time

category

gender

age

customer_id

quantity

total_sale

The SQL queries focus on answering real-world business questions related to sales performance, customer behavior, category-wise insights, and time-based patterns.

🔧 Tech Stack

Database: MySQL / MySQL Workbench

Language: SQL

Dataset: Retail sales table (retail_sales) with ~10+ columns

📌 List of SQL Tasks Completed
Q1. Retrieve all columns for sales made on 2022-11-05

Filter the dataset to extract all transactions from a specific date.

Q2. Retrieve all Clothing category transactions where quantity > 10 in Nov 2022

Time-based filtering + category + quantity conditions.

Q3. Calculate total sales per category

Aggregate category-wise revenue using SUM() and GROUP BY.

Q4. Find the average age of customers in the Beauty category

Use AVG() to calculate customer age insights.

Q5. Retrieve all transactions with total sales greater than 1000

High-value transaction analysis.

Q6. Find number of transactions by each gender in each category

Multi-column grouping: category + gender.

Q7. Calculate average sale per month & find best-selling month per year

Uses:

YEAR(), MONTH()

AVG()

RANK() OVER(PARTITION BY ...)

Q8. Find top 5 customers by highest total sales

Customer value analysis using ORDER BY + LIMIT.

Q9. Find unique customers who purchased from each category

Uses COUNT(DISTINCT customer_id).

Q10. Create time-based shifts (Morning, Afternoon, Evening) and count orders

Case-based segmentation using:

HOUR()

CASE WHEN

CTE (WITH clause)

📊 Skills Demonstrated

✔ Filtering & Sorting
✔ Aggregate Functions (SUM, AVG, COUNT)
✔ Grouping & Multi-Level Grouping
✔ Window Functions (RANK)
✔ Date Functions (YEAR, MONTH, HOUR)
✔ Subqueries & CTEs
✔ Conditional Logic (CASE WHEN)
✔ Business-Oriented SQL Analysis

📈 Business Insights Highlighted

Best-selling categories

High-value customers

Age group performance

Monthly sales trends

Peak shopping hours

Gender-based purchasing trends

📜 How to Run This Project

Open MySQL Workbench

Create a schema (ex: sql_project_p1)

Import the dataset into a table named retail_sales

Run queries from the SQL file

All SQL queries are included in Project_1.sql 

Project_1

🌟 Project Outcome

This project shows how SQL can help derive meaningful insights from raw retail sales data.
It also demonstrates analytical thinking, business understanding, and technical SQL capabilities.
