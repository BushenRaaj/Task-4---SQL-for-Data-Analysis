# Task-4---SQL-for-Data-Analysis
# 📊 SQL Data Analysis (Ecommerce Dataset)

This project is part of the **Data Analyst Internship (Task 3: SQL for Data Analysis)**.  
The goal is to practice **SQL querying, joins, subqueries, aggregates, views, and indexing** using an **Ecommerce Dataset**.

---

## 📌 Project Overview

This project focuses on performing **SQL-based data analysis** on a simulated **Ecommerce Dataset**.  
The primary objective is to apply SQL techniques to **extract, manipulate, and analyze structured data** in order to derive actionable business insights.

The dataset models a simplified ecommerce platform, containing four core entities:

- **Customers** → user information and regions  
- **Products** → catalog of items with categories and prices  
- **Orders** → transactions made by customers  
- **Order Items** → line-level details of each order  

---

### 🎯 Key Objectives
- Strengthen proficiency in **SQL querying** for data analysis.  
- Demonstrate the ability to **join and aggregate relational data** to answer business questions.  
- Showcase the use of **subqueries, views, and indexing** for advanced analysis and optimization.  
- Develop a reproducible workflow by documenting queries and results.  

---

### 🛠️ Techniques Applied
- **Data Filtering & Grouping** → `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`.  
- **Joins** → `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` to combine data across tables.  
- **Subqueries** → nested queries for comparative and conditional analysis.  
- **Aggregate Functions** → `SUM`, `AVG`, `COUNT`, `MAX`, `MIN` to calculate KPIs such as revenue and ARPU.  
- **Views** → reusable logical tables for customer sales and monthly revenue.  
- **Indexes & Optimization** → performance improvements with indexing and `EXPLAIN`.  

---

## 🗂️ Dataset

The dataset simulates a simple **ecommerce system** with 4 related tables:

1. **customers**
   - `customer_id`, `name`, `email`, `region`, `created_at`
2. **products**
   - `product_id`, `name`, `category`, `price`
3. **orders**
   - `order_id`, `customer_id`, `order_date`, `status`, `total_amount`
4. **order_items**
   - `order_item_id`, `order_id`, `product_id`, `qty`, `price`

📂 Files included:  
- `customers.csv`  
- `products.csv`  
- `orders.csv`  
- `order_items.csv`  

---

## ⚙️ Tools
- **MySQL Workbench** (SQL Editor + Import Wizard)  
- **GitHub** (submission & version control)

---

## 📂 Repository Structure  

- [queries.sql](queries.sql) → All SQL queries
- [customers.csv](customers.csv) → Customers dataset  
- [products.csv](products.csv) → Products dataset  
- [orders.csv](orders.csv) → Orders dataset  
- [order_items.csv](order_items.csv) → Order items dataset  
- [screenshots/](screenshots/) → Screenshots of query outputs  
- [README.md](README.md) → Project documentation  

---

## 📜 Queries Implemented

### a. SELECT, WHERE, ORDER BY, GROUP BY

- Customers from the North region  


<img width="1227" height="756" alt="1" src="https://github.com/user-attachments/assets/158fb56e-ffd9-44b1-8ba4-740673563872" />


- Orders sorted by highest total amount  


<img width="1227" height="752" alt="2" src="https://github.com/user-attachments/assets/3cef38ab-72fa-42db-a789-6e7d81124b61" />


- Total sales grouped by region  


<img width="1227" height="755" alt="3" src="https://github.com/user-attachments/assets/b9172dd3-98c1-4593-9e2a-cb8cb6a4304b" />


### b. JOINS

- INNER JOIN: customers with their orders


<img width="1224" height="758" alt="4" src="https://github.com/user-attachments/assets/dd154229-063d-44e8-a1aa-fc4d561e89b0" />

  
- LEFT JOIN: all customers and their orders (if any)
  

<img width="1228" height="757" alt="5" src="https://github.com/user-attachments/assets/3112c01d-f5f5-494d-825f-d4951bdf175b" />

  
- RIGHT JOIN: all orders with customer info


<img width="1231" height="755" alt="6" src="https://github.com/user-attachments/assets/b45a8954-853f-454e-9e2d-97bd0713ecf2" />


### c. Subqueries

- Customers who spent above the average order amount


<img width="1231" height="757" alt="7" src="https://github.com/user-attachments/assets/da406107-3ea1-4115-938c-e5391f63c56f" />

  
- Products more expensive than average product price  


<img width="1230" height="761" alt="8" src="https://github.com/user-attachments/assets/338691cb-0ada-49e5-b93a-cd0d60afbed5" />


### d. Aggregate Functions

- Total revenue (SUM)


<img width="1232" height="757" alt="9" src="https://github.com/user-attachments/assets/4ec9d879-a643-4a52-8040-5150750fa287" />


- Average revenue per user (ARPU)


<img width="1229" height="761" alt="10" src="https://github.com/user-attachments/assets/ef63003e-65eb-4047-bebf-e92b80706b2e" />

  
- Order counts by status (COUNT)


<img width="1227" height="761" alt="11" src="https://github.com/user-attachments/assets/d2cc2593-72c5-460d-87fe-afc9f379505c" />


- Highest priced product (MAX)  


<img width="1229" height="758" alt="12" src="https://github.com/user-attachments/assets/4c923632-1cc1-4f83-97c5-ac729d771bc5" />


### e. Views
- `customer_sales` → total spending per customer

  
<img width="1229" height="754" alt="13" src="https://github.com/user-attachments/assets/bd98d74d-93c5-471d-b3ac-bc9244f7dd65" />


### f. Optimization
- Index on `orders.customer_id`  
- Verified with `EXPLAIN`


<img width="1232" height="756" alt="14" src="https://github.com/user-attachments/assets/c53e105a-db57-44ac-99f5-dc3567ec371e" />



## 📂 Repository Structure
