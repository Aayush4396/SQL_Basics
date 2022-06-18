with temp as
(
	Select customer_id,product_name, count(order_date) as Item,
	DENSE_RANK() over (partition by customer_id order by count(order_date) desc) as items
	from sales$
	join Menu$
	on Sales$.product_id=Menu$.product_id
	Group by customer_id, product_name
)

select customer_id,product_name,Item from temp
where items=1