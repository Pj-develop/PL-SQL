create table empdata(
    EmpID int primary key,
    EmpFname varchar2(20),
    EmpLname varchar2(20),
    Department varchar2(20),
    Project_ID varchar2(20),
    Address varchar2(50),
    DOB date,
    Gender Char(1)
);

insert into empdata
values(5,'Ananya','Mishra','Admin','P03','Jalandhar,Punjanb-144420','11/25/2003','F');

insert into empdata
values(6,'Sonia','Kaushik','Accounts','P05','Jalandhar,Punjanb-144420','05/08/2003','F');


select * from empdata
order by empid;

create table emppos(
    EmpID int primary key,
    EmpPos varchar2(20),
    DOB date,
    Salary number
);

alter table emppos
rename column DOB to DOJ;


insert into emppos
values(1,'CEO','01/31/2023',28750);
insert into emppos
values(2,'Manager','01/31/2023',28750);

insert into emppos
values(3,'Executive','01/31/2023',24550);

insert into emppos
values(4,'Lead','01/31/2023',25740);

insert into emppos
values(5,'Sales Manager','01/31/2023',5810);

select * from emppos;

select upper(EmpFname) as EmpName from empdata; 
