create table test(sid int identity(1,1) primary key, sname varchar(20), course varchar(10),city varchar(20))


drop  table test
select * from test

insert into test values( 'sai','MCA', 'sodam');


insert into test values( 'Venkatsai','MBA', 'mpl');



insert into test values( 'vaishu','MCA', 'ctr');

select sname  from test where sname = 'sai' and course ='MCA'


