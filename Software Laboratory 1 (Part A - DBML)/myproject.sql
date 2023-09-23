create database Farm;
    
    use Farm;
    
    create table Fillf(
    id int,
    Fname varchar(200),
    Address varchar(323),
    Pno int);
    
    alter table Fillf
    modify id varchar(200);
    
      alter table Fillf
    modify Pno varchar(200);
    
    desc fillf;