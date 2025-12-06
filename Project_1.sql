

-- Q1. write a sql query to retrieve all columns for sales made on '2022-11-05'

select * 
from retail_sales
where sale_date = '2022-11-05';

-- Q2. write a sql query to retrieve all transactions where the 
-- category is 'Clothing' and the quantity sold is more than 10
-- in the month of Nov-2022

SELECT *
FROM retail_sales
WHERE category = 'Clothing'
and sale_date between '2022-11-01' and '2022-11-30'
and quantiy >= 4;

-- Q3 write a sql query to calculate the total sales (total_sale) for each category.

select category, sum(total_sale) as net_sale, 
count(*) as total_orders
from retail_sales
group by category;

-- Q4. write a sql query to find the average age of customers who
-- purchased items from the 'Beauty' category.

select round(avg(age),2) as avg_age
from retail_sales
where category = 'Beauty';

-- Q5. write a sql query to find all transactions where the total_sale
-- is greater than 1000.

select transactions_id, total_sale
from retail_sales
where total_sale >= 1000;

-- Q6. write a sql query to find the total number of transactions
-- (transactions_id) made by each gender in each category.

select category, gender, count(*) as total_trans
from retail_sales
group by category, gender
order by 1;

-- Q7. write a sql query to calculate the average sale for each
-- month. find out best selling month in each year.
select year, month, avg_sale
from (
select year(sale_date) as year,
month(sale_date) as month,
avg(total_sale) as avg_sale,
rank() over (partition by year(sale_date) order by avg(total_sale) desc) as ranks
from retail_sales
group by 1,2
) as t1
where ranks = 1;


-- Q8. write a sql query to find the top 5 customers based on the
-- highest total sales.

select customer_id, sum(total_sale) as total_sale
from retail_sales
group by 1
order by 2 desc
limit 5;

-- Q9. write a sql query to find the number of unique customers
-- who purchased items from each category.

select category, count(distinct customer_id) as distinct_customer
from retail_sales
group by 1;


-- Q10. write a sql query to create each shift and number of orders
-- (example morning <= 12, afternoon between 12 & 17, evening >17)
with hourly_sale
as 
(
select *,
case
when hour(sale_time) < 12 then 'Morning'
when hour(sale_time) between 12 and 17 then "Afternoon"
else 'Evening'
end as shift
from retail_sales
)
select 
shift,
count(*) as total_orders
from hourly_sale
group by shift;


-- End of project