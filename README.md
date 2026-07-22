# SQL Data Engineering Portfolio

## Overview

This project demonstrates practical SQL skills used in real-world data engineering and analytics projects. It uses a realistic e-commerce dataset to solve common business problems through SQL.

The repository covers everything from database design to business analytics, including joins, aggregations, Common Table Expressions (CTEs), window functions, and data quality checks.

---

## Project Objectives

* Design a relational database schema
* Perform business analysis using SQL
* Practice interview-level SQL problems
* Demonstrate production-style query writing
* Build a portfolio project showcasing SQL best practices

---

## Technologies Used

* SQL
* PostgreSQL (compatible with most relational databases)
* Git & GitHub
* CSV datasets

---

## Project Structure

```text
sql-data-engineering-portfolio/
│
├── datasets/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   └── order_items.csv
│
├── schema/
│   └── create_tables.sql
│
├── queries/
│   ├── 01_basic_analysis.sql
│   ├── 02_joins_and_revenue.sql
│   ├── 03_ctes.sql
│   ├── 04_window_functions.sql
│   ├── 05_data_quality_checks.sql
│   └── 06_business_case_studies.sql
│
├── images/
│
├── results/
│
└── README.md
```

---

## Database Schema

The project contains four relational tables.

### Customers

Stores customer profile information.

### Products

Contains product catalog information.

### Orders

Stores order details including order date and status.

### Order Items

Stores products purchased in each order.

Relationships:

* One customer can place many orders.
* One order can contain many products.
* One product can appear in many different orders.

---

## Skills Demonstrated

* SQL fundamentals
* Data filtering and sorting
* Aggregate functions
* GROUP BY and HAVING
* INNER JOIN
* LEFT JOIN
* Business KPI calculations
* Revenue analysis
* Customer analytics
* Relational database design
* Primary Keys
* Foreign Keys
* Data integrity constraints

---

## Current Progress

* ✅ Created relational database schema
* ✅ Added realistic sample datasets
* ✅ Implemented basic SQL analysis
* ✅ Built revenue and JOIN queries
* 🚧 CTE examples (In Progress)
* 🚧 Window functions (Coming Soon)
* 🚧 Data quality checks (Coming Soon)
* 🚧 Business case studies (Coming Soon)

---

## Future Enhancements

* Advanced CTE examples
* Window function use cases
* Customer Lifetime Value (CLV)
* Monthly sales dashboard queries
* Top-selling product analysis
* SQL performance optimization
* Indexing examples
* Query execution plan analysis

---

## Author

**Pavithra**

Data Engineer passionate about building scalable data solutions using SQL, Python, PySpark, cloud platforms, and modern data engineering practices.

If you found this project useful, feel free to ⭐ the repository.
