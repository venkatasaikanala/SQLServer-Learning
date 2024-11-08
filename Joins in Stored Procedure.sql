--creating stored procedure --

alter PROCEDURE  GetCustomerDetail (@id int)


AS
BEGIN
	--
	SET NOCOUNT ON;
/*	select * from Customers;

	select * from state;
	
	select * from City;
*/

select  c.CustomerID,concat(c.FirstName, c.LastName) [name], s.name as State , cit.name as City from Customers c

join state s on c.StateId=s.id 
join City cit on cit.id= c.CityId
where c.CustomerID=@id

END

GO
exec GetCustomerDetail 5;

