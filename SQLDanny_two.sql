Select customer_id,count(distinct order_date) as No_of_Days from Sales$
group by customer_id
