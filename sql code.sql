select first_name ||' '|| last_name as "full name",salary,(salary+300),salary+300+((salary+300)*.10) as "Total Salary"

from employees;


describe regions
from employees;

select months_between('01-sep-08','11-jan-04'),
add_months ('31-jan-04',5),
next_day ('01-mar-25','saturday'),
last_day ('01-july-25')
from dual;



l.country_id, c.country_id







-- 1
select  last_name,salary
from employees
where not(salary  between  5000 and 12000);


--2
select last_name,department_id
from employees
where department_id in(20,50) ;


--3
select  last_name,salary
from employees
where (salary between 5000 and 12000) and
department_id in(20,50);

--4

select last_name,salary,commission_pct 
from employees
order by salary desc, commission_pct desc;



--5
select last_name,salary,commission_pct
from employees
where commission_pct = .20;






--1
select first_name,HIRE_date
from employees
where HIRE_DATE between '01-JAN-00' and '31-DEC-05';

--2
select first_name,HIRE_DATE 
from employees
WHERE JOB_ID LIKE 'IT_PROG'
OR JOB_ID LIKE 'SA_REP';

--3
select employee_id,HIRE_DATE
from employees
where HIRE_DATE >'01-JAN-2008';

--4
select *
from  employees
where employee_id in (150,160);

--5
select first_name,salary,commission_pct,hire_date
from employees
where salary>10000;

select employee_id,last_name,salary,salary+(salary*.155) as "New Salary"
from employees;


----table making------
create table emp1287271(
eid number(7,2) constraint emp1287271_eid_pk primary key,
ename varchar2(25),
salary number(8,2),
hire_date date not null,
address varchar2(20)
);


DESCRIBE emp1287271;

alter table emp1287271 add (
department_id number(6),
dept_name varchar(20));

insert into  emp1287271 values(1,'atik',5000,'01-jan-2000','131/3,demra',101,'finance');
insert into  emp1287271 values(2,'reza',15000,'01-feb-2001','131/3,kodomtola',107,'econo');
insert into  emp1287271 values(3,'arif',12000,'01-mar-2003','131/3,basabo',108,'math');
insert into  emp1287271 values(4,'yasin',20000,'01-apr-2004','131/3,mugda',105,'code');
insert into  emp1287271 values(5,'mogbul',120000,'01-may-2005','131/3,rampura',106,'biology');
------table end-----




