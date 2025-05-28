# TASK-6-Sales-Trend-Analysis-Using-Aggregations

# 📘 SQL Practice – Monthly Revenue & Order Volume Report

## 🧾 Project Overview
This project uses SQL to analyze recent sales data from an e-commerce dataset. The main goal is to compute **monthly total revenue** and **order volume** over the past 12 months using the `online_sales_data` table from the `data_for_practice` database.

---

## 🛠️ Tools & Technologies
- MySQL (or compatible SQL engine)
- SQL queries
- SQL client (e.g., MySQL Workbench, DBeaver, phpMyAdmin)

---

## 📂 Database & Table Structure

**Database:** `data_for_practice`  
**Table:** `online_sales_data`

| Column Name       | Data Type     | Description                    |
|-------------------|---------------|--------------------------------|
| `Transaction_ID`  | VARCHAR / INT | Unique transaction ID          |
| `order_date`      | DATE          | Date of the transaction        |
| `total_revenue`   | FLOAT / DEC   | Revenue generated from the sale |
| ...               | ...           | (Additional columns as needed) |

---

## 📌 SQL Query Description

The following query:
- Retrieves monthly revenue and distinct transaction count
- Covers the last 12 months from today
- Groups by year and month
- Sorts chronologically
- Limits results to 2 rows for preview

```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS Total_revenue,
    COUNT(DISTINCT Transaction_ID) AS order_volume
FROM
    online_sales_data
WHERE
    order_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month
LIMIT 2;
````

---

## ✅ Steps to Run

1. **Create and switch to the database:**

```sql
CREATE DATABASE data_for_practice;
USE data_for_practice;
```

2. **Verify tables:**

```sql
SHOW TABLES;
SELECT * FROM online_sales_data LIMIT 5;
```

3. **Run the monthly analysis query.**

---

## 📈 Example Output

| year | month | Total\_revenue | order\_volume |
| ---- | ----- | -------------- | ------------- |
| 2024 | 5     | 12,540.75      | 93            |
| 2024 | 6     | 13,220.10      | 98            |

---

## 🎯 Use Cases

* Feeding data into Power BI / Tableau dashboards
* Tracking performance trends
* Business intelligence insights

---


