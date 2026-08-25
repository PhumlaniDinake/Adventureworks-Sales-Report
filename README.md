# AdventureWorks Sales Report

A SQL + Power BI analysis of sales performance using the AdventureWorks LT (Lightweight) sample dataset, built to explore revenue trends, top-performing products, and regional sales distribution.

## Problem

A fictional bike manufacturer (AdventureWorks) wants a quick view into overall sales performance: how much revenue is being generated, which products are driving that revenue, and which regions/countries are the strongest markets.

## Approach

- Restored the AdventureWorksLT2022 sample database in SQL Server
- Wrote SQL queries to explore the schema and pull key business metrics (see `/sql`)
- Connected Power BI Desktop directly to SQL Server and built an interactive dashboard (see `/powerbi`)
- Used DAX aggregations (Sum, Count Distinct) to calculate revenue, order counts, and averages

## Key Findings

- Total revenue across all orders: **R956,304** (32 orders, ~R29,885 average order value)
- **Touring-1000 Blue, 60** and **Mountain-200 Black, 42** were the top two products by revenue
- Touring, Mountain, and Road bikes dominate the top 10 products — accessories didn't crack the top list
- The **United States and United Kingdom** are the strongest markets, followed by Canada

## Dashboard

![Dashboard Overview](screenshots/dashboard_overview.png)

## Tools Used

- SQL Server & SSMS (data storage, querying)
- Power BI Desktop (data modeling, DAX, visualization)
- Git & GitHub (version control)

## How to Run This Yourself

1. Restore the [AdventureWorksLT2022](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks) backup into SQL Server
2. Run the queries in `/sql` to explore the data
3. Open `/powerbi/sales_report.pbix` in Power BI Desktop (update the data source connection if your server instance name is different)

## Project Structure

```
adventureworks-sales-report/
├── README.md
├── sql/
│   ├── 00_explore_schema.sql
│   ├── 01_overview_metrics.sql
│   ├── 02_top_products.sql
│   └── 03_revenue_by_region.sql
├── powerbi/
│   └── sales_report.pbix
├── screenshots/
│   └── dashboard_overview.png
└── docs/
```
