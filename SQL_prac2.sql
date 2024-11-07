--- creating table 
--- ddl -- create ,alter, truncate,drop



--create 
create table student(sid int identity(1,1) primary key , sname varchar(30) , scourse varchar(10), s_college varchar(20)  );

-- insert values 

insert into student(sname,scourse,s_college) values('sai','mca','mits'),('shalu','mca','mits'),('pranav','mtech','vit'),('sailu','mca','mits') ,('navya','Btech','mits')

select * from student;


--alter 

  alter table student add mobilenumber varchar(10);


  --addig values 

  
  update student set mobilenumber =7032661163 where stu_id=1;

 alter table student 
drop column mobilenumber ;



 --rename--sp_rename


sp_rename 'student.sid' , 'stu_id' ,'column'-- rename column name 

sp_rename 'student','student_data ','object'


select * from student_data;

sp_rename 'student_data.scourse','stu_course','column' 

sp_rename 'student_data.mobilenumber','stu_mobile','column';


create table College(clg_id int identity(1,1) primary key , clg_name varchar(20), clg_place varchar(20));

insert into College values('mits','mpl')

insert into College values('vit','vellore')
insert into College values('jntu','atp')


select * from student_data;



select * from student_data  where stu_mobile is null


select stu_name from student_data where s_college = 'mits';




select * from student_data  order by stu_course;


select * from College;





 --


		