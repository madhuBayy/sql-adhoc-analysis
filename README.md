# sql-adhoc-analysis
A hands-on SQL project solving real-world ad hoc business requests for Atliq Hardwares. Demonstrates skills in joins, CTEs, subqueries, and window functions to extract actionable insights for data-driven decisions.


# 📊 SQL Ad-hoc Analysis

Welcome to my SQL Ad-hoc Analysis project where I worked on solving real-world business problems using structured SQL queries. This case study is based on **Atliq Hardwares**, a fictional company in the computer hardware space, designed to simulate the kind of quick-turnaround analytical work often required in a business setting.

---

## 🏢 Business Context

**Atliq Hardwares** is a leading computer hardware manufacturer in India with a growing presence in international markets. Despite strong market performance, their management team realized they lacked actionable insights for making data-driven decisions swiftly.

To address this, the analytics director, **Tony Sharma**, decided to hire junior data analysts through a SQL challenge. The challenge was designed to evaluate both **technical skills** (SQL proficiency) and **business thinking** (ability to draw insights).

This project is my response to that challenge.

---

## 🧠 Objectives

- Extract actionable insights related to:
  - Product performance
  - Sales trends
  - Customer behavior
  - Regional contributions
- Showcase strong SQL logic and analytical reasoning

---

## 🛠️ Tools & Technologies

- **SQL dialect**: MySQL
- **SQL Concepts Used**:
  - Joins (INNER, LEFT)
  - Aggregation functions (SUM, AVG, COUNT)
  - Window functions (ROW_NUMBER, RANK)
  - Common Table Expressions (CTEs)
  - Subqueries (Scalar, Correlated)

---

## 📂 Project Structure

```plaintext
sql-sales-analysis/
│           
├── data/
│   └── Metadata.txt            
│   └── gdb023_dim_customer.sql      # Table creation scripts
│   └── gdb023_dim_product.sql
│   └── ... 
│
├── queries/
│   ├── 01_atliq_markets_apac.sql
│   ├── 02_unique_product_growth.sql
│   └── 03_unique_product_count_by_segment.sql
│   └── ...
│
├── visuals/
│   └── trends_chart.png
│      
├── Insights.md       
├── README.md       
└── LICENSE
```

## 🧠 Business Insights

The SQL analysis surfaced multiple actionable insights for Atliq Hardwares’ management, spanning product strategy, customer behavior, sales performance, and operational efficiency. You can read the entire report [here](Insights.md)
