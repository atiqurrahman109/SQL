create table atik5555(
eid number constraint  atik5555_eid_pk primary key,
ename varchar2(30),
salary number(8,2),
hire_date date,
address varchar2(30)
);
alter table  atik5555 add(
department_id number(5),
department_name VARCHAR2(30)
);
TRUNCATE table atik5555;
insert into atik5555 values(1,'reza',101010,'01-may-2005','125/3,romna',80,'finance');
insert into atik5555 values(2,'rahamat',101010,'02-may-2005','125/3,romna',80,'finance');

create view atik
as select ename , department_name, salary
from atik5555
where department_id=80;

create sequence atik5555_seq
start with 1
increment by 1
maxvalue 2000
nocache
nocycle;

INSERT INTO atik5555(eid,ename,salary,hire_date,address,department_id,department_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;










select*from atik5555;
drop  emp1287271;