use mydb;
show tables;
select * from cust_shop
limit 5;
-- 1.compare between male and female revenue spent
select gender, sum(purchase_amount) as revenue from cust_shop
group by gender;
-- 2.customers who spent more than the avg purchase amount
select customer_id,purchase_amount from cust_shop
where purchase_amount >= (select avg(purchase_amount) from cust_shop);
-- 3.selecting the top 5 rated items which are greater than the average rating 
select item_purchased, round(avg(review_rating),2) as rating from cust_shop
group by item_purchased
order by avg(review_rating) desc
limit 5;
-- 4.comapring which type of shipping has the highest purchase amount
select shipping_type, round(avg(purchase_amount),2) from cust_shop
where shipping_type in ("Standard","Express")
group by shipping_type;
-- 5. compare between subscribers and non-subscribers.
select subscription_status, count(customer_id) as total_cust,round(avg(purchase_amount),2) as avg_spend,
round(sum(purchase_amount),2) as total_revenue from cust_shop
group by subscription_status
order by total_revenue,avg_spend desc;
-- 6.which 5 products with highest percentage of purchases with discounts applied
select item_purchased, 
round(100 * sum(case when discount_applied="Yes" then 1 else 0 end)/count(*),2)as discount_rate 
from cust_shop
group by item_purchased
order by discount_rate desc
limit 5;
-- IMP 7.customer segmentation based on the total no. of previous purchases and shows the count of each segment
with customer_type as(
select customer_id, previous_purchases,
case 
	when previous_purchases=1 then "New"
    when previous_purchases between 2 and 10 then "Returning"
    else "Loyal"
end as customer_segment
from cust_shop)
select customer_segment,count(*) as "No_of_customers" from customer_type
group by customer_segment;
-- 8.Top 3 most purchased products from each category,(taking rownum is better as there are 2 values with same total_orders)
with item_counts as(
select category,item_purchased, 
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) desc) as item_rn
from cust_shop
group by category,item_purchased)
select item_rn,category,item_purchased,total_orders
from item_counts
where item_rn<=3;
-- 9. checking if the customers with greater than 5 previous purchases are likely to subscribe
select subscription_status, count(customer_id) as repeat_buyers
from cust_shop
where previous_purchases>5
group by subscription_status;
-- 10.revenue contribution from each age group
select age_groups, sum(purchase_amount) as total_revenue from cust_shop
group by age_groups
order by total_revenue desc; 

