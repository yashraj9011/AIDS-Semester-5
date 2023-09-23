create database companyinfo;

use companyinfo;
create table emp
(eid int,
ename varchar(34) not null,
city varchar(20),
doj date
);

insert into emp(
eid,ename,city,doj) values (01,"harsh","baramati","2001-11-21");

insert into emp(
eid,ename,city,doj) values (02,"harshvardhan","mumbai","2001-12-01");

insert into emp(
eid,ename,city,doj) values (03,"abhi","delhi","2002-11-05");

insert into emp(
eid,ename,city,doj) values (04,"sujay","bangalore","2003-01-11");

create table company(
cid int ,
cname varchar(23) ,
city varchar(34)
);

insert into company(
cid,cname,city) values (51,"INFOSYS","mangalore");
insert into company(
cid,cname,city) values (52,"TCS","bhopal");
insert into company(
cid,cname,city) values (53,"DASSAULT SYSTEMS","pune");

select * from company;
select cname ,city from company;











