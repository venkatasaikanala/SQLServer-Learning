
--== Q1 : create a employee table and add columns id,name,role,and join each employee with their manager id where the manager is in the same table 

--== Answer

create table empl (e_id int identity(1,1) primary key, ename varchar(30), rolename varchar(20));

insert into empl(ename,rolename) values ('sai','backend developer'),
('venkat','data base architec'),('vaishali','manager'),('dev','front-end develiper'),
('darshan','manager')

select * from empl

alter table empl add team_manager int null ;


update empl set team_manager =5 where e_id=2;
update empl set team_manager =3 where e_id in (1,4)


select e.e_id emp_id ,e.ename emp_name ,
e1.e_id  managerid from empl e  left join empl e1 on e.team_manager = e1.e_id order by managerid; 


-----------------------------

--==Q2 : Create table student with id,name fields and create table subject with id and sub name 
--==      then add the subjectname with all the students to all subjects 

create table student (S_id int identity(1,1), S_name varchar(30));

insert into student(S_name)values('sai'),('sanju'),('sravan'),('pavan'),('kiran'),('sharan'),('rayan'),('amaran')

select * from student

create table [subject](id int identity(1,1) ,subject_name varchar(20))

insert  into subject(subject_name) values('maths'),('Physics'),('Computer science'),('chemisty')


select * from subject


alter table subject add constraint  id primary key(id)

alter table student add sub_id int foreign key  references subject(id) 




select  S_name as Studnet_Name, sub.subject_name from  student  cross join subject sub  group by s.S_id


select * from student;
select* from subject

-- insert data  1-maths,2-phy,3-chem,4-com

insert into student(S_id,sub_id) values(1,1),(1,2),(1,3),(2,1),(2,2),(2,4),
(3,1),(3,2),(3,3),(4,1),(4,2),(4,4),(5,1),(5,2),(5,4),(6,1),(6,3),(6,4),(7,1),(7,2),(7,3),(8,1),(8,2),(8,4)

/*Msg 544, Level 16, State 1, Line 53
Cannot insert explicit value for identity column in table 'student' when IDENTITY_INSERT is set to OFF.*/
SET IDENTITY_INSERT student ON;
SET IDENTITY_INSERT student off

select  s.S_id as student_id,s.S_name as student_name,sub.subject_name  from student s cross join subject sub

-- student,subject  query
select s_id,s_name , subject_name  from student,subject where s_name  is not null  order by S_name

-- emp based query
select e.e_id emp_id ,e.ename emp_name ,
e1.e_id  managerid ,e1.ename  from empl e  left join empl e1 on e.team_manager = e1.e_id order by managerid; 





 





