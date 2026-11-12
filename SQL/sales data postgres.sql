--create table sales data
CREATE TABLE sales_data (
    row_id INTEGER,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(150),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INTEGER,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC(12,2),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(12,2),
    profit_margin NUMERIC(10,4)
);

select * from sales_data;

select count(*) from sales_data;

--KPI 
select 
sum(sales) as total_sales,
sum(profit) as total_profit,
COUNT(DISTINCT order_id) AS total_orders,
SUM(quantity) AS total_quantity,
ROUND(SUM(profit) / NULLIF(SUM(sales), 0) * 100, 2) AS profit_margin
FROM sales_data;

--Year wise performane
select 
extract(year from order_date) as year,
sum(sales) as total_sales,
sum(profit) as total_profit
from sales_data
group by 1
order by year;

--category performance
select 
category,
sum(sales) as total_sales,
sum(profit) as total_profit,
round(sum(profit)/nullif(sum(sales),0) *100,2) as profit_margin
from sales_data
group by 1
order by total_profit desc;

--sub category performance
select 
sub_category,
sum(sales) as total_sales,
sum(profit) as total_profit,
round(sum(profit)/nullif(sum(sales),0) *100,2) as profit_margin
from sales_data
group by 1
order by total_profit desc;

--regional analysis
select 
region,
sum(sales) as total_sales,
sum(profit) as total_profit,
round(sum(profit)/nullif(sum(sales),0) *100,2) as profit_margin
from sales_data
group by 1
order by total_profit desc;

--customer segment
select 
segment,
sum(sales) as total_sales,
sum(profit) as total_profit,
round(sum(profit)/nullif(sum(sales),0) *100,2) as profit_margin
from sales_data
group by 1
order by total_profit desc;

--discount vs profitability
SELECT
    CONCAT(discount * 100, '%') AS discount_percentage,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin
FROM sales_data
GROUP BY discount
ORDER BY discount;

--top 10 products by profit
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

--bottom 10 products by profit
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit 
LIMIT 10;