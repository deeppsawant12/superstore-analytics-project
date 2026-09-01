# Retail Sales Analytics: End-to-End Data Analysis

An end-to-end data analytics project analyzing retail sales performance using Excel, SQL, Python, and Power BI — from raw data cleaning to an interactive dashboard.

## Problem Statement

Analyzed Superstore sales data to identify performance trends across regions, product categories, and time, in order to surface actionable business insights on where sales are concentrated and how they've evolved.

## Data Source

- **Dataset:** Superstore Sales Dataset (Kaggle)
- **Size:** ~9,800 rows, 18 columns
- **Fields:** Order ID, Order Date, Ship Date, Customer info, Region, Category, Sub-Category, Product Name, Sales, and more

## Tools & Workflow

**Excel → SQL → Python → Power BI**

1. **Excel** — Initial data audit: checked for nulls, duplicates, and inconsistent formatting. Built a quick pivot table (Region × Category) as a first-look sanity check.

2. **SQL (MySQL)** — Loaded cleaned data into a MySQL database. Wrote analytical queries including:
   - Aggregate business snapshot (total sales, orders, customers)
   - Monthly sales trend
   - Top 10 customers by sales
   - Running total of sales over time (window function)
   - Product ranking within category (`RANK() OVER PARTITION BY`)
   - Month-over-month growth (`LAG()` function)
   - Created a summarized SQL view for downstream use

3. **Python (pandas, matplotlib, seaborn)** — Performed exploratory data analysis:
   - Data structure and null checks
   - Sales by Category and Region
   - Monthly sales trend visualization
   - Top 10 products by sales
   - Sales by Sub-Category
   - Exported a clean, aggregated summary CSV for Power BI

4. **Power BI** — Built a 2-page interactive dashboard:
   - **Page 1 (Overview):** Total sales, average sales, monthly trend line, sales by category, sales by segment, and a Category/Segment waterfall chart, with a Region slicer
   - **Page 2 (Deep Dive):** Sub-Category sales breakdown, detailed Region/Category/Sub-Category table, and a Category slicer

## Key Insights

- **West region** leads in total sales, followed by East, Central, and South
- **Technology** is the top-performing category by sales
- **Phones, Chairs, and Storage** are the top-selling sub-categories
- Sales show a clear **upward trend from 2015–2018**, with recurring seasonal spikes (likely holiday-driven)
- **Canon imageCLASS 2200 Advanced Copier** is the single highest-selling product, nearly double the next closest product

## Skills Demonstrated

- Data cleaning and auditing (Excel)
- SQL: joins, aggregations, window functions (`RANK`, `LAG`, running totals), views
- Python: pandas for data manipulation, matplotlib/seaborn for visualization
- Power BI: interactive multi-page dashboards, slicers, DAX-based cards, waterfall and matrix visuals
- End-to-end data pipeline thinking — from raw CSV to business-ready dashboard

## Dashboard Screenshots

### Power BI — Page 1: Overview
![Overview Page](screenshots/page1_overview.png)

### Power BI — Page 2: Deep Dive
![Deep Dive Page](screenshots/page2_deepdive.png)

### Python — Exploratory Data Analysis

**Data structure check**
![Data structure check](screenshots/data_structure_check.png)

**Total Sales by Region**
![Sales by Region](screenshots/sales_by_region.png)

**Monthly Sales Trend**
![Monthly Sales Trend](screenshots/monthly_sales_trend.png)
