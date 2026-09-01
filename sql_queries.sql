CREATE DATABASE ;

CREATE TABLE superstore (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    region VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(30),
    sub_category VARCHAR(30),
    product_name VARCHAR(150),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);



CREATE VIEW monthly_sales_view AS
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
    Region,
    Category,
    `Sub-Category`,
    ROUND(SUM(Sales),2) AS total_sales,
    COUNT(DISTINCT `Order ID`) AS total_orders
FROM train
GROUP BY month, Region, Category, `Sub-Category`;