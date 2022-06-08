select * from Sales.SalesOrderDetail

select SalesOrderID,ProductID,Sum(UnitPrice) as SumUnitPrice from Sales.SalesOrderDetail
Group by SalesOrderID, ProductID
Order by ProductID
