select ceil(32.001);
select floor(40.00003);
select floor(55.0004);
select round(43.444);
select ceil(43.444);
select sqrt(8.2);
select power(9,2);
select power(3.3,3.4);
select length('hello,good morning');
select ltrim('  Hello, Good Morning');
select rtrim('  Hello, Good Morning  #   ');
select ltrim('  Hello, Good Morning        *');

select substring('Hello, Good Morning',4,3);
select lpad("vp",5,"##");
select rpad("vp",5,"3");
select abs(-6.67);
select (datediff('2022-09-10','2004-12-14'))/365;








use assignmentdata;
create table emp(eid int Primary key, ename varchar(25) not null,designation varchar(20), city varchar(20));
create table company(cid int unique, cname varchar(25) primary key, city varchar(20));
create table works(eid int, cname varchar(25), salary int not null, foreign key (eid) references emp(eid), foreign key (cname) references company(cname));
drop table emp;
insert into emp values(101,'Shreyash','Data Scientist','Baramati'); 
insert into emp values(102,'janvi','Web Developer','Mumbai'),(103,'Mayur','Developer','Pune'),(104,'Amey','Business Analyst','dubai'),(105,'Omkar','Tester','chennai'),(106,'Krishna','ML Engineer','jammu'),(107,'Sharim','App Developer','Bangalore'),(108,'Aditya','new york','Data Analyst');
select * from emp;
insert into company values(201,'Infosys','Pune'),(202,'IBM','Bangalore'),(203,'TCS','Pune'),(204,'HCL','Delhi'),(205,'Cognizant','Mumbai');
insert into works values(101,'Infosys',65000);
insert into works values (102,'Cognizant',35000),(103,'TCS',55000),(104,'IBM',55000),(105,'HCL',70000),(106,'TCS',65000),(107,'Infosys',80000),(108,'IBM',60000);
select * from company;
select * from works;
select * from emp left join works on works.eid=emp.eid where cname='TCS' or cname='Infosys';
select * from emp left join works on works.eid=emp.eid where cname='IBM' order by (salary)desc limit 1,1;
select * ,count(works.eid) from company left join works on works.cname=company.cname group by works.cname order by count(works.eid) desc;
update company set city='pune' where cid=1004;
select *from works;
select *from emp;
select *from company;
select *from emp left join works on emp.eid=works.eid inner join company on works.cname=company.cname where emp.city=company.city;
select * from emp left join works on works.eid=emp.eid  where works.salary>50000 and emp.ename like '%a%';
Select * from emp left join works on works.eid=emp.eid where salary=(select min(salary) from works where cname="HCL");
select *,avg(works.salary) from company left join works on works.cname=company.cname group by works.cname having avg(works.salary)>40000;
select * from emp left join works on works.eid=emp.eid where salary>(select min(salary) from works where works.cname='TCS');
select *from works;
select *from emp;
select * from company;
select cname,count(eid), avg(salary), sum(salary) from works group by cname;
select * from emp left outer join works on works.eid=emp.eid;
select * from emp right outer join works on works.eid=emp.eid;
select * from emp left outer join works on works.eid=emp.eid union select * from emp right outer join works on works.eid=emp.eid;
update works set salary=salary+(salary*0.1) where cname='TCS';
update works set salary=salary+(salary*0.1) where cname='TCS';
update works set salary=salary+(salary*0.1) where cname='Infosys';
select * from works;
create table works1 select * from works;
select * from works1;
create table works2 select * from works where eid is NULL;
select * from works2;
select * from emp left join works on works.eid=emp.eid where emp.city='Pune' or cname='TCS';
select * from emp left join works on works.eid=emp.eid where emp.city='Pune' and cname='TCS';
select * from emp left join works on works.eid=emp.eid where emp.city='Bangalore' and cname<>'Infosys';