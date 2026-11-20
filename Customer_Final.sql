
select datname
from pg_database;

select current_database();

select table_name
from information_schema.tables
where table_schema = 'public';

select current_schema();

select * from customer;

select 
column_name,
data_type
from information_schema.columns
where table_name = 'customer';

-- ques 1
select gender , count(*) from customer group by gender;

--ques 2
select customer_id , purchase_amount from customer
where discount_applied ='Yes' and 
purchase_amount >= (select avg(purchase_amount)  from customer);

--ques 3
select item_purchased,Round(avg(review_rating::numeric),2)  as Avg_Product_Rating
from customer 
group by item_purchased order by avg(review_rating::numeric) desc limit 5;

--ques 4
select shipping_type, Round(Avg(purchase_amount),2) as Avg_Purchase_Amount
from customer where shipping_type in ('Standard','Express') 
group by shipping_type;

-- ques 5
select subscription_status, Round(Avg(purchase_amount),2) as Avg_spend,
sum(purchase_amount) as Total_Amount from customer
group by subscription_status;

-- ques 6
select item_purchased,
Round(100  * sum(
case when discount_applied='Yes' then 1 else 0 end)
/count(*) ,2) as discount_rate
from customer 
group by item_purchased
order by discount_rate desc
limit 5;

--ques 7
with customer_segment as(
select customer_id,
(case when previous_purchases = 1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal' end ) as segments
from customer
) select segments, count(*) from customer_segment group by segments;

-- ques 8
with item_counts as (
select category ,
item_purchased ,
count(customer_id) as total_order,
row_number() over(partition by category  
order by count(customer_id) desc) as Rank_Item
from customer group by category  , item_purchased
 ) select * from item_counts where Rank_Item < 4; 

-- ques 9 
select subscription_status ,
count(Customer_id )as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status;


-- ques 10
select age_groups, sum(purchase_amount) as Total_Revenue_created from customer
group by age_groups;


