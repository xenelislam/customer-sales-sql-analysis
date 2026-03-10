-- Dataset: Online Retail Dataset

-- 1. Total number of rows in the dataset
SELECT COUNT(*) AS total_rows
FROM sales;


-- 2. Orders by country
SELECT Country,
       COUNT(*) AS total_orders
FROM sales
GROUP BY Country
ORDER BY total_orders DESC
LIMIT 10;


-- 3. Top selling products (by quantity sold)
SELECT Description,
       SUM(Quantity) AS total_quantity_sold
FROM sales
GROUP BY Description
ORDER BY total_quantity_sold DESC
LIMIT 10;


-- 4. Products generating the most revenue
SELECT Description,
       SUM(Quantity * UnitPrice) AS total_revenue
FROM sales
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;


-- 5. Top spending customers
SELECT CustomerID,
       SUM(Quantity * UnitPrice) AS total_spent
FROM sales
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;


-- 6. Monthly revenue trend
SELECT 
    substr(InvoiceDate, instr(InvoiceDate, '/') + instr(substr(InvoiceDate, instr(InvoiceDate, '/') + 1), '/') + 1, 4)
    || '-' ||
    printf('%02d', CAST(substr(InvoiceDate, 1, instr(InvoiceDate, '/') - 1) AS INTEGER)) AS month,
    SUM(Quantity * UnitPrice) AS revenue
FROM sales
GROUP BY month
ORDER BY month;