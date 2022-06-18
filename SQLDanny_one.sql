Select S.customer_id, sum(M.price) as spends 
from dbo.Sales$ S
join dbo.Menu$ M
on S.product_id=M.product_id
group by S.customer_id
