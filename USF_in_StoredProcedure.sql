 --create procedure getcustdetails
 alter procedure getcustdetails
 
 as
 begin
       set nocount on;
	/*
	-- customer table  
	   select * from Customers 
	   -- product table
	   select * from  Orders
	   select * from  OrderItems
	   select * from products
	   -- we are joining the products, orders,customers table to orderitems table  and adding some UDF to it 
	   */

select oi.orderid,p.ProductName, dbo.getproduct(p.productid) as price ,
dbo.getquantity(p.ProductID) as Quantity,
concat(c.FirstName,c.LastName) as Customername  from OrderItems oi
join Products p  on p.ProductID=oi.ProductID join Orders o on
o.OrderID = oi.OrderID join Customers c on c.CustomerID= o.CustomerID


select p.ProductID,p.ProductName into ##tempro from Products p

-- adding the UDF to temp table 

select *, dbo.getproduct(productid) as Product_price from ##tempro   ;

drop table ##tempro

end
go 

exec getcustdetails