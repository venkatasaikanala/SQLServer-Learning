 --== Creating temp table in stored procedure ==--

 alter PROCEDURE TempTablePrac

AS
BEGIN
	SET NOCOUNT ON;

	-- Creation of temp table :
--=======================================================

--local tempary 

--create  table #test (id int , name varchar(20) )

-- inseration 
--insert into #test(id,name) values (1,'sai'),(2,'sailu'),(3,'shalu'),(4,'pranav')

--select * from #test
--drop table #test  --- 

--==creating global temp table 

create table ##test2Global(id int,name varchar(20));

insert into ##test2Global(id,name) values (1,'sai'),(2,'sailu'),(3,'shalu'),(4,'pranav'),(5,'sumanth')

select * from ##test2Global
--drop table ##test2Global

END

GO

 exec TempTablePrac;


 go

 alter procedure Temptableprac_2

 as
 begin
 set nocount on;

 --select * from #test

 --Msg 208, Level 16, State 0, Line 37
-- Invalid object name '#test'.  --==== we got this error because we created local temp table 


--======
select * from ##test2Global -- it is global temp table we can access in entire session 

insert into ##test2Global (id,name) values(5,'vedika'),(6,'navya')

drop table ##test2Global
 end
 
 go

 exec Temptableprac_2;