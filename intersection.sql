create table details(
    id_ppl int primary key, name_ppl varchar2(30) , country varchar2(30)
);
insert into details
values(6,'Rahul','India');

select * from details;

create table branchs(
    branch_code int primary key, country varchar2(30)
);


insert into branchs
values(601,'Australia');

select * from branchs;

select country from details
intersect
select country from branchs
order by country;
