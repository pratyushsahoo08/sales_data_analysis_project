CREATE DATABASE SALES_ANALYSIS;
USE SALES_ANALYSIS;
SELECT * FROM sales_data_cleaning;

select sum(revenue) from sales_data_cleaning;
select product , sum(revenue) as total_sum from sales_data_cleaning
group by product 
order by total_Sum desc
limit 1;
select avg(price) from sales_data_cleaning;
select sum(quantity) from sales_data_cleaning;
select category , sum(revenue) as total_sum from sales_data_cleaning
group by category
order by total_sum desc
limit 1;
select avg(revenue) from sales_data_cleaning;
select quarter(str_to_date(order_date,'%d-%m-%Y'))as qtr, sum(revenue) as total_sale from sales_data_cleaning
group by qtr
order by qtr;




