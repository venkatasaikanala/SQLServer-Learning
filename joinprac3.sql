--created Student_Info table 
--created Dept_info table 
--created  table 


select * from Student_info;
select * from Dept_Info;
select * from college_info;

create table [College_Info](clg_id int identity(1,1) primary key, clg_name varchar(20))

insert into College_Info (clg_name) values ('Mits'),('vit'),('jntu'),('svcet');

sp_rename 'Employee','Student_Info','object';


/*
alter table employee add college_id int;

update employee set college_id = 1 where empid=1;

update employee set college_id = 2 where empid=2;

update employee set college_id = 3 where empid=3;
update employee set college_id = 4 where empid=4;

*/

sp_rename 'Student_Info.empid','std_id','column';

sp_rename 'Student_Info.empname','std_name','column';

sp_rename 'Student_Info.empdept','dept','column';

alter table Dept_info add clg_id int;


update  Dept_Info  set  Dept_Id= 1001where Dept_Name='mca'
update Dept_Info  set  Dept_Id= 1002where Dept_Name='mba'

update Dept_Info  set  Dept_Id= 1003where Dept_Name='mtech'

update Dept_Info  set  Dept_Id= 1004 where Dept_Name='msc'

update  Dept_Info  set  clg_id= 1 where  dept_id = 1001
update   Dept_Info set   clg_id= 2where Dept_id=1002

update  Dept_Info set  clg_id= 3where Dept_id=1003

update  Dept_Info  set  clg_id= 4 where Dept_id=1004




select * from Student_info;
select * from Dept_Info;
select * from college_info;


  
select  s.std_id, s.std_name,d.dept_name department , c.clg_name  from student_info as s 

join Dept_Info d  on s.dept = d.Dept_Id

join College_Info c  on d.clg_id = c.clg_id

select  s.std_id, s.std_name,d.dept_name department , c.clg_name  from student_info as s 

left join Dept_Info d  on s.dept = d.Dept_Id

right join  College_Info c  on d.clg_id = c.clg_id



