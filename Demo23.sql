select * from indian_supermarket_sales_1000;
select distinct branch from indian_supermarket_sales_1000;
select distinct customer_type from indian_supermarket_sales_1000;
select distinct payment from indian_supermarket_sales_1000;
select min(date) as start_date, max(date) as end_date from indian_supermarket_sales_1000;


select product_line, sum(total) as total_sale, count(*) as transaction_count
from indian_supermarket_sales_1000
group by product_line
order by total_sale desc;

select customer_type, gender, count(*) as transaction_count,
round(avg(total),2) as avg_transaction,
round(sum(total),2) as total_sales
from indian_supermarket_sales_1000
group by customer_type, gender
order by total_sales desc

select
case
when datepart(HOUR,time) between 0 and 7 then 'early Morning'
when datepart(HOUR,time) between 8 and 11 then 'Morning '
when datepart(HOUR,time) between 12 and 16 then 'Afternoon '
else 'Evening' end as time_of _day,
count(*) as transaction_count,
sum((total) as total_case,
round(avg(total),2) as avg_sale
from indian_supermarket_sale_1000
group by case
when date(HOUR,time) between 0 and 7 then 'Early Morning'
when datepart(HOUR,time) between 8 and 11 then 'Morning '
when datepart(HOUR,time) between 12 and 16 then 'Afternoon'
else 'Evening' end


select branch,
count(*) as transaction count,
round (avg(total), 2) as avg transction, round(sum (total) 2) as total sales,
from indian supermarket sales 1000
group by branch
order by total sales desc


select product line,
round [sum(total) 2) as total sales,
round (sum unit price quantity) 2) as total_unit_price
from indian _supermarket sales 1000
group by product line

