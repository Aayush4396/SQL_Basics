with temp as
(
	Select Members$.customer_id,order_date, product_name
	from Sales$
	join Members$
	on Sales$.customer_id=Members$.customer_id
	join Menu$
	on Sales$.product_id=Menu$.product_id
	where Sales$.order_date>=Members$.join_date

)

select * from temp
select * from Members$

select * from Menu$

select * from Sales$