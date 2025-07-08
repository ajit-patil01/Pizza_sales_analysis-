# Pizza_sales_analysis-

This project is a comprehensive analysis of pizza sales data using SQL for data manipulation and Microsoft Excel for interactive dashboard creation. It provides key business insights and performance metrics such as total revenue, average order value, and product trends to support data-driven decision-making in the food and beverage industry.

## Project Title: Retail Sales Analysis  

## Project Structure : 
The Pizza Sales Analysis project demonstrates the power of combining SQL and Excel to analyze sales performance. Using a real-world styled dataset, SQL is used to extract and prepare the data, while Excel is used to design a clean, interactive dashboard.

The analysis focuses on identifying sales patterns, understanding customer preferences, and tracking business KPIs such as:

- Total Revenue

- Average Order Value

- Total Pizzas Sold

- Average Pizzas per Order

Visualizations such as :
- Percentage Sales by category
- Percentage Sales by Size
- Pizza sold by Category
- Top 5 Best and Worst Seller


  ## Data Analysis & Findings

1.  SQL query to get Total Revenue: 
 ```sql
select round(Sum(total_price),2) as Total_revenue from pizza_sales;```

2. 	SQL query to get Average Order Value: 
   select  (sum(total_price) / count(distinct order_id))  as Avg_order_value
from pizza_sales;

3. SQL query to get Total Pizza Sold. : 
   SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales;

4. SQL query to get Total Orders : 
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;

5. SQL query to get  Get hourly trend of Pizza sale : 
SELECT HOUR (order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by HOUR (order_time) ;

6. SQL Query to get Percentage Sales by Category
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) AS DECIMAL(10,2))*100/(SELECT SUM(total_price)from pizza_sales)
as pct 
from pizza_sales
group by pizza_category ;

7. SQL query to get Percentage of Sales by Pizza Size
   SELECT pizza_size , CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,  -- CAST(... AS DECIMAL(10,2)): This converts the sum (which might be an integer or a float) into a DECIMAL data type.
CAST(SUM(total_price) AS DECIMAL(10,2))*100/(SELECT SUM(total_price) from pizza_sales) 
as pct 
from pizza_sales
group by pizza_size ;

8. SQL Query to get Total Pizza Sold by Pizza Category
select pizza_category , sum(quantity) as Total_quantity 
from pizza_sales 
group by pizza_category ;

9. SQL Query to get Total Pizza Sold by Pizza Size 
 select pizza_size , sum(quantity) as Total_quantity 
 from pizza_sales 
 group by pizza_size ;

10. SQL query to get Average Quantity per Order Item by Pizza Category 

SELECT
    pizza_category,
    AVG(quantity) AS average_quantity_per_item
FROM
    pizza_sales
GROUP BY
    pizza_category
ORDER BY
    average_quantity_per_item DESC;

11. SQl query to Worst and best Pizza category by sales 
 select pizza_category , sum(quantity) as Total_pizza_sold 
 from pizza_sales 
 group by pizza_category 
 order by Total_pizza_sold ;

12.SQl query to get Top five Pizza Betseller
select pizza_name , 
 sum(quantity) as Total_pizza_sold 
 from pizza_sales 
 group by pizza_name 
 order by Total_pizza_sold desc
 limit 5 ; 



