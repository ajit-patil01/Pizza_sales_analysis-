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
 select round(Sum(total_price),2) as Total_revenue from pizza_sales;

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

6. 




