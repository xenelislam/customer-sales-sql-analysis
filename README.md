# Customer Sales SQL Analysis

This project analyzes an online retail dataset using SQL to explore sales trends, customer behavior, and product performance.

## Dataset

The dataset used in this project is the **Online Retail dataset**, which contains transaction-level retail sales data.

Due to file size limits, the dataset is not included in this repository.

You can download it from:
https://archive.ics.uci.edu/ml/datasets/Online+Retail

The dataset contains transaction-level sales data including:

- Invoice number
- Product description
- Quantity purchased
- Unit price
- Customer ID
- Country
- Invoice date

## Setup

1. Download the dataset.
2. Import the CSV file into SQLite using DB Browser for SQLite.
3. Create a table named `sales`.
4. Run the queries in `analysis_queries.sql`.

## Key Questions

The analysis answers several common business questions:

- Which countries generate the most orders?
- Which products sell the most units?
- Which products generate the most revenue?
- Which customers spend the most?
- How does revenue change over time?

## SQL Skills Demonstrated

- Data aggregation (`SUM`, `COUNT`)
- Grouping and sorting (`GROUP BY`, `ORDER BY`)
- Revenue calculations
- Customer analysis
- Time-based sales trends

## Files


customer-sales-sql-analysis
├── data
│ └── online_retail.csv
├── sql
│ └── analysis_queries.sql
├── customer_sales.db
└── README.md


## Tools Used

- SQL (SQLite)

- DB Browser for SQLite
