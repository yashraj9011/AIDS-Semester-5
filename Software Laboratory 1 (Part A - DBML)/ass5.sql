create database db;
use db;
create table student(regno int, studname varchar(20) ,
mark1 int,mark2 int, mark3 int);

desc student;
insert into student values (101,'yash',90,86,89);
insert into student values (102,'abhi',98,56,88);
insert into student values (103,'ravi',99,45,97);
insert into student values (104,'ram',66,98,67);
insert into student values (105,'bunny',78,99,67);
insert into student values (106,'jimmy',88,96,78);
insert into student values (107,'kunal',77,65,89);
insert into student values (108,'raju',87,55,87);
alter table student add column totalmark int;
alter table student add column avgmark int;
alter table student add column res  int;
select * from student;

create procedure result()
begin declare r,m1,m2,m3,t int;
declare a numeric (10,2);
declare result varchar (20);
declare d in t default 0;
declare c1 cursor for select regno,mark1,mark2,mark3
 from student;
 declare continue handler for not set d=1;
 open c1;
 loop1:loop fetch c1 into r,m1,m2,m3;
 if d-1 then leaave loop1;
 end if;
 set t-m1+m2+m3;
 set a-t/3;
 if a>=75 then set result ='Distinction';
 else a>-60 then set result ='First class';
 elseif a>=45 then set result ='second class' else set ='fail';
 endif;
 update student set totalmark=t,avgmark=a,res=result where 
 regno=r; end loop;
 end $$
 
 call result()$$
 





