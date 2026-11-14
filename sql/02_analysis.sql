-- Sales & Customer Analytics: KPI and dashboard queries (PostgreSQL)

-- KPI: total revenue
SELECT ROUND(SUM("Sales"), 2) AS total_revenue
FROM superstore;

-- KPI: total profit
SELECT ROUND(SUM("Profit"), 2) AS total_profit
FROM superstore;

-- KPI: total orders
SELECT COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore;

-- Revenue by region
SELECT "Region",
       ROUND(SUM("Sales"), 2) AS revenue
FROM superstore
GROUP BY "Region"
ORDER BY revenue DESC;

-- Profit by category
SELECT "Category",
       ROUND(SUM("Profit"), 2) AS profit
FROM superstore
GROUP BY "Category"
ORDER BY profit DESC;

-- Revenue per year
SELECT EXTRACT(YEAR FROM "Order Date") AS order_year,
       ROUND(SUM("Sales"), 2) AS revenue
FROM superstore
GROUP BY order_year
ORDER BY order_year;

-- Top 10 products by revenue
SELECT "Product Name",
       ROUND(SUM("Sales"), 2) AS revenue
FROM superstore
GROUP BY "Product Name"
ORDER BY revenue DESC
LIMIT 10;
