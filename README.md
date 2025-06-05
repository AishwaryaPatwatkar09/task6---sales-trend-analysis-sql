# Task 6 – Sales Trend Analysis Using Aggregations 📊

## ✅ Objective:
Analyze monthly **revenue** and **order volume** using SQL aggregation techniques.

---

## 🗃 Dataset
- Table: `online_sales`
- Columns used:
  - `order_date`: Date of the order
  - `amount`: Revenue of the order
  - `order_id`: Unique ID of each order

---

## 🧠 What I Did

- Used `EXTRACT()` to get **year** and **month** from `order_date`
- Used `SUM()` to calculate **monthly revenue**
- Used `COUNT(DISTINCT order_id)` for **order volume**
- Grouped the data using `GROUP BY` and sorted with `ORDER BY`
- Also displayed **Top 3 months** based on highest revenue using `LIMIT 3`

---

## 🔍 SQL Queries

```sql
-- Monthly Revenue and Order Volume
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS monthly_order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Top 3 Months by Revenue
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
