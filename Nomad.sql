
-- The date of the earliest and latest order.
select
    min(purchase_date) as earliest_order,
    max(purchase_date) as latest_order
from orders;

-- The AOV for purchases made in US in 2019 (AOV Average order value)
select round(avg(unit_price_usd),2) as AOV
from orders
where country = 'United States'
and year(purchase_date) = 2019;

-- Total number of orders by shipping month, sorted recent to oldest.
select DATE_FORMAT(shipping_date, '%Y-%m') as shiping_month,
count(order_id) as total_orders
from order_status
where shipping_date is not null
group by DATE_FORMAT(shipping_date, '%Y-%m')
order by shiping_month desc ;

-- AOV by year
select round(avg(unit_price_usd),2) as AOV,
       year(purchase_date) as purchase_year
from orders
group by year(purchase_date)
order by purchase_year;

-- Refund status
select *,
       case
           when refund_amount_usd is null then 0
            else 1
        end as is_refund
from order_status
limit 10;

-- product names of Apple products.
select product_name
from orders
where product_name like '%Apple%';

-- Days to ship
select datediff( os.shipping_date,o.purchase_date) as shipping_day
from orders o
         left join order_status os on o.order_id = os.order_id
where os.shipping_date is not null
  and o.purchase_date is not null
;

-- Order counts, sales, and AOV for IPhone sold in North America for each quarter across all years
select year(purchase_date) as purchae_year,
        quarter(purchase_date) as  purcahes_quartur,
       count(order_id) as order_count,
       round(sum(unit_price_usd),2) as total_sales,
       round(avg(unit_price_usd),2) as AOV
from orders
left join customers on orders.customer_id = customers.customer_id
left join geo_lookup on customers.country  = geo_lookup.country
where region = 'NA'
and product_name like '%iPhone%'
group by year(purchase_date),
         quarter(purchase_date)
order by year(purchase_date) desc ,
         quarter(purchase_date) desc ;

-- Average quarterly order count and total sales for ThinkPad Laptop sold in North America
with quarterly as (
    select quarter(orders.purchase_date)as purchase_quarter,
           count(distinct orders.order_id) as order_count,
           round(sum(orders.unit_price_usd))as total_sales
    from orders
    left join customers on orders.customer_id = customers.customer_id
    left join geo_lookup on orders.country = geo_lookup.country
    where product_name like '%ThinkPad Laptop%'
    group by 1
    order by 1 desc
)
select round(avg(order_count),2)as avg_quarter_orders,
       avg(total_sales) as avg_quarter_sales
from quarterly;

-- Refund rate and refund count for each product overall
with refund_summary as (
    select product_name,
           count(orders.order_id) as total_orders,
           sum(case when refund_amount_usd is not null then 1 else 0 end) as refund_count
    from orders
    left join order_status on orders.order_id = order_status.order_id
    group by product_name
)
select product_name,total_orders,refund_count,round(refund_count/total_orders * 100,1) as refund_rate_pct
from refund_summary
where product_name is not null
order by refund_rate_pct desc;

-- Sales Revenue
select date_format(purchase_date,'%Y-%m') as month,
       Round(sum(unit_price_usd * quantity),2) as total_revenue
from orders
group by date_format(purchase_date,'%Y-%m')
order by month;

-- Number of Orders
select date_format(purchase_date,'%Y-%m') ,count(order_id)
from orders
group by date_format(purchase_date,'%Y-%m');

-- Product Sales Surged
select product_name,
       date_format(purchase_date ,'%Y-%m') as month,
       round (sum(unit_price_usd),2) as total_price_per_sale
from orders
group by date_format(purchase_date ,'%Y-%m'),product_name
order by month;

-- AOV Over Time
select product_name,
       date_format(purchase_date ,'%Y-%m') as month,
       round(avg(unit_price_usd),2) as AOV
from orders
group by product_name ,date_format(purchase_date ,'%Y-%m')
order by product_name, month ;

-- sales revenue 2019 versus 2022 sales revenue
select g.region,
       year(o.purchase_date) as year,
       round( sum(o.unit_price_usd),2) as sales_revenue
from orders o
         join geo_lookup g
              on o.country = g.country
where year(o.purchase_date) in (2019, 2022)
group by g.region,
         year(o.purchase_date)
order by g.region,
         year;