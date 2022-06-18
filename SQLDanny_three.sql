With Firstdish
As
(
	Select customer_id,product_name,
	DENSE_RANK() over(Partition by sales$.customer_id order by Sales$.order_date) rank
	from Sales$ 
	join Menu$
	on Sales$.product_id=Menu$.product_id
	
)

Select distinct * 
from Firstdish
where rank=1

Select * from Sales$

Select * from Menu$