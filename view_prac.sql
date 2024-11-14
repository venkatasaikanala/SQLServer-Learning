-- UDF -- tabular function 

 alter  function GetProductData (@id int)
returns table 
as 
return(
select  p.ProductName,p.Description,p.Price  from products p where p.ProductID=@id); 

-- select dbo.GetProductData(2); == th is is for scalar 


select * from dbo.GetProductData(6); 

--===========================================

-- creating a view 

 create  view  ALLCustomersInfo as 
SELECT        dbo.Customers.CustomerID, concat( dbo.Customers.FirstName,dbo.Customers.LastName)as Custmer_name , 
dbo.Customers.Address, dbo.City.name, dbo.state.name AS state
FROM            dbo.City INNER JOIN
dbo.Customers ON dbo.City.id = dbo.Customers.CityId INNER JOIN
dbo.state ON dbo.City.Stateid = dbo.state.id AND dbo.Customers.StateId = dbo.state.id

select * , o.TotalAmount from ALLCustomersInfo a	left outer join Orders o on a.CustomerID = o.CustomerID
				
select * from dbo.ALLCustomersInfo;


DROP VIEW   dbo.ALLCustomersInfo;

