Welcome to my new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

# 🚀 Sales Analytics using dbt & Databricks

An end-to-end Data Engineering project built using **dbt**, **Databricks**, and the **Medallion Architecture**. This project demonstrates how raw sales data is transformed into clean, business-ready datasets using modern ELT practices.

---

## 📌 Project Overview

This project follows the **Medallion Architecture** to transform raw customer and order data into analytics-ready datasets.

The pipeline consists of:

- **Source Layer** – Raw tables from Databricks
- **Bronze Layer** – Raw ingestion using dbt sources
- **Silver Layer** – Data cleaning & transformations
- **Gold Layer** – Business-ready aggregated data

---

# 🏗️ Architecture

```text
                     Databricks

               sales.source.customer
               sales.source.orders
                        │
                        ▼
                 Bronze Layer
          stg_customer    stg_orders
                        │
                        ▼
                 Silver Layer
         dim_customer    fct_orders
                        │
                        ▼
                   Gold Layer
          customer_order_summary
                        │
                        ▼
         Business Intelligence / Analytics
              (Power BI / Tableau)
```

---

# 📂 Project Structure

```text
dbt_sales_project/
│
├── analyses/
├── macros/
│   └── generate_schema_name.sql
│
├── models/
│   ├── bronze/
│   │     ├── stg_customer.sql
│   │     └── stg_orders.sql
│   │
│   ├── silver/
│   │     ├── dim_customer.sql
│   │     └── fct_orders.sql
│   │
│   ├── gold/
│   │     └── customer_order_summary.sql
│   │
│   └── sources.yml
│
├── seeds/
├── snapshots/
├── tests/
│
├── dbt_project.yml
└── README.md
```

---

# ⚙️ Tech Stack

| Technology | Purpose |
|------------|----------|
| dbt | Data Transformation |
| Databricks | Data Warehouse |
| SQL | Data Transformation Logic |
| Git & GitHub | Version Control |
| Unity Catalog | Data Governance |

---

# 📊 Medallion Architecture

## 🥉 Bronze Layer

Purpose:

- Raw data ingestion
- Minimal transformation
- Maintain source data integrity

Models:

- stg_customer
- stg_orders

---

## 🥈 Silver Layer

Purpose:

- Clean and standardize data
- Apply business rules
- Prepare dimension & fact tables

Transformations:

- Trim whitespace
- Standardize text (UPPER/LOWER)
- Data type casting
- Remove invalid records
- Data quality improvements

Models:

- dim_customer
- fct_orders

---

## 🥇 Gold Layer

Purpose:

Business-ready reporting tables.

Model:

customer_order_summary

Business Metrics:

- Total Orders
- Total Revenue
- Average Order Value
- First Order Date
- Last Order Date

---

# 🔄 Data Flow

```text
Raw Tables
      │
      ▼
Source
      │
      ▼
Bronze
      │
      ▼
Silver
      │
      ▼
Gold
      │
      ▼
Power BI / Tableau
```

---

# ✅ Data Quality Tests

Implemented using dbt.

- Unique Tests
- Not Null Tests
- Relationship Tests
- Accepted Values Tests

Example:

- customer_id must be unique
- order_id must not be null
- Orders must belong to valid customers

---

# 🚀 dbt Commands

Install Dependencies

```bash
dbt deps
```

Run Models

```bash
dbt run
```

Run Tests

```bash
dbt test
```

Run Specific Layer

```bash
dbt run --select bronze
dbt run --select silver
dbt run --select gold
```

Generate Documentation

```bash
dbt docs generate
dbt docs serve
```

---

# 📈 Business Output

The Gold model provides:

- Customer-wise Revenue
- Total Orders
- Customer Summary
- Sales Analytics
- Reporting-ready dataset

# 🎯 Key Features

✅ Medallion Architecture

✅ Source → Bronze → Silver → Gold

✅ dbt Best Practices

✅ Modular SQL Models

✅ Data Quality Testing

✅ Business-ready Gold Layer

✅ Clean Project Structure

✅ Documentation Ready

---

# 📚 Key Concepts Demonstrated

- ELT Pipeline
- Data Modeling
- dbt Sources
- ref() Function
- Modular SQL
- Data Testing
- Medallion Architecture
- Fact & Dimension Modeling
- SQL Transformations
- Analytics Engineering

---

# 👨‍💻 Author

**Rudreshwar Lodhi**

Aspiring Data Engineer

Skills:

- SQL
- Python
- PySpark
- dbt
- Databricks
- ETL
- Data Warehousing

---
