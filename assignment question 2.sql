create database employee;
use employee;
create table emp(eid int(10) primary key not null,ename varchar(20) not null,age int not null,salary int not null);
insert into emp(eid,ename,age,salary)values(101,'ANU',22,9000);
insert into emp(eid,ename,age,salary)values(102,'SHANE',29,8000);
insert into emp(eid,ename,age,salary)values(103,'ROHAN',34,6000);
insert into emp(eid,ename,age,salary)values(104,'SCOTT',44,10000);
insert into emp(eid,ename,age,salary)values(105,'TIGER',35,8000);
insert into emp(eid,ename,age,salary)values(106,'ALEX',27,7000);
insert into emp(eid,ename,age,salary)values(107,'ABHI',29,8000);
select * from emp;
select count(ename)from emp;
select max(age)from emp;
select min(age)from emp;
select sum(age)from emp;
select avg(age)from emp;
create view emp_age as select age from emp;
select * from emp_age;
select salary from emp order by salary asc;
select salary from emp order by salary desc;
SELECT salary " employee salary", COUNT(*) "salary" FROM emp GROUP BY salary;







