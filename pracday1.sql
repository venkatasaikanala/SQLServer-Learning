 create database student;
  

 create table studentdata(sid int identity(1,1) primary key ,sname varchar(20), course varchar(10), city varchar(20) ,marks int );

 insert into studentdata values('sai','mca','sdm',85)
  insert into studentdata values('sailu','mca','mpl',90)

 insert into studentdata(sname,course, city,marks) values('vamsi','mba','mpl',80),
 ('ravi','msc','atp',92),('vaishu','bsc','ctr',95),
 ('vedika','mca','tpt',98)


 select * from studentdata;

 select sname from studentdata;

 select * from studentdata  where course='mca';

 select * from studentdata where course='mca' and sname = 'sai';



 
 select * from studentdata where course='mba' or sname = 'sai';

  
  select * from studentdata where marks>90;


  select * from studentdata where course ='mca' or marks>90;

  select * from studentdata where course ='mca' and marks<90;



   delete from studentdata where marks<90;


  delete  from studentdata where sname ='vedika';





  truncate  table studentdata;
 
 drop table studentdata;





 create table  trip(tid int identity(1,1) primary key , tdestination varchar(20));


 insert into trip values( 'ap')
 insert into trip(tdestination) values ('karnataka'),('kerana'),('tamilnadu')

 select * from trip ;



 create table traveller( tra_id int identity(1,1) primary key, tra_name varchar(20),
 tra_gender varchar(1), 
 tra_city varchar(20),
 tra_desination varchar(20), tra_dest_id int foreign key references trip(tid))

 alter table traveller drop column  tra_desination ;

 insert into traveller values ('sai', 'M', 'bnglr', 3);

 insert into traveller values ('vedika', 'F', 'hyd', 3);


insert into traveller values ('aishu', 'F', 'hyd', 3);

select * from traveller;



--ddl  data definition languages ( create, alter, drop, truncate , sp_rename)


alter table traveller

add budget int default 10000;


alter table traveller

add Agree varchar default 'NO';



sp_rename 'traveller','tourist';

select * from tourist;




-- dml -data manupulation language -- insert, update ,delete

update tourist  
set budget =6000 where tra_dest_id =3;


 alter table tourist 
 drop column agree 














