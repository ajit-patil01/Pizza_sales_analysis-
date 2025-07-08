SELECT * FROM pizza.pizza_sales;
#1. Total Revenue 
select round(Sum(total_price),2) as Total_revenue from pizza_sales; 

#2. Average Order Value
select  (sum(total_price) / count(distinct order_id))  as Avg_order_value
from pizza_sales;  

#3. Total Pizza Sold. 
SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales;

#4. Total Orders 
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;




#5. Get hourly tred of Pizza sales
SELECT HOUR (order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by HOUR (order_time) ; 

#6. Percentage of Sales by Pizza_category 
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) AS DECIMAL(10,2))*100/(SELECT SUM(total_price)from pizza_sales)
as pct 
from pizza_sales
group by pizza_category ;

#7. Percentage of Sales by Pizza_category 
SELECT pizza_size , CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,  -- CAST(... AS DECIMAL(10,2)): This converts the sum (which might be an integer or a float) into a DECIMAL data type.
CAST(SUM(total_price) AS DECIMAL(10,2))*100/(SELECT SUM(total_price) from pizza_sales) 
as pct 
from pizza_sales
group by pizza_size ;

#8. Total Pizaa sold by Pizza category 
select pizza_category , sum(quantity) as Total_quantity 
from pizza_sales 
group by pizza_category ; 

#9.  Total Pizaa sold by Pizza Size 
 select pizza_size , sum(quantity) as Total_quantity 
 from pizza_sales 
 group by pizza_size ; 
 
 
 #10. Average Quantity per Order Item by Pizza Category - 
 
SELECT
    pizza_category,
    AVG(quantity) AS average_quantity_per_item
FROM
    pizza_sales
GROUP BY
    pizza_category
ORDER BY
    average_quantity_per_item DESC;
 
 
 #11 . Worst and best Pizza category by sales 
 select pizza_category , sum(quantity) as Total_pizza_sold 
 from pizza_sales 
 group by pizza_category 
 order by Total_pizza_sold ; 
 
# 12. Top five Pizza Betseller 
 select pizza_name , 
 sum(quantity) as Total_pizza_sold 
 from pizza_sales 
 group by pizza_name 
 order by Total_pizza_sold desc
 limit 5 ; 
 
