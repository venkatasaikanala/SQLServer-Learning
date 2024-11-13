select * from Products;

--========User Defined Functions =================
--1.Scalar functions 
--2. Tabular functions 
--======================================================
-- for these USF practice we are using product table 



select * from orders
alter function getmaxorderAmount(@id int)
returns int
as
begin
declare @amount as int
select @amount= max(TotalAmount) from [Orders] where CustomerId=@id
return @amount
end

select dbo.getmaxorderAmount(23)

select *,dbo.getmaxorderamount(customerid) as Amount from Orders


select *,dbo.getmaxorderAmount(customerid) as maxAmountOrdered from customers











alter Function GetProductPrice(@id int) 
returns int
as 
begin 

declare @maxamount as int 
select @maxamount = max(price)from Products where ProductID=@id
return @maxamount
end

--select GetProductPrice(2)
--'GetProductPrice' is not a recognized built-in function name.
--Completion time: 2024-11-13T19:15:09.7022271+05:30


select dbo.GetProductPrice(5) as price



alter  function GetProduct(@id int )
returns int 
as 
begin 
declare @name as int 

select @name = price from Products where ProductID =@id
return @name
end 

select dbo. Getproduct(1)

select *, dbo.getproduct(productid) as Final_Price from OrderItems




/*

create function getPinfo(@id int)
returns int 

as 
begin

--logic 
--return 

end
*/


create function getPquantity(@price int)
returns int 

as 
begin
declare @quantity
select @quantity = stockquantity from Products where 
return @quantity

end

select dbo.getPquantity(200);






