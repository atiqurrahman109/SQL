create table emp_1287271(
eid NUMBER(5) constraint emp_128727_eid_pk primary key ,
ename VARCHAR2(30),
salary NUMBER(8,2),
address VARCHAR2(30),
hire_date DATE
);


ALTER table emp_1287271 add(

dept_id NUMBER(6)
department_name VARCHAR2(15));

insert into emp_1287271 values(1,'atik',2000,'132/4,wari','01-may-01',10,'finance');
insert into emp_1287271 values(2,'atik',2000,'132/4,wari','01-may-01',10,'finance');
insert into emp_1287271 values(3,'atik',2000,'132/4,wari','01-may-01',10,'finance');
insert into emp_1287271 values(4,'atik',2000,'132/4,wari','01-may-01',10,'finance');
insert into emp_1287271 values(5,'atik',2000,'132/4,wari','01-may-01',10,'finance');

create view emp80
as select ename , dept_name,salary
from employees
where department_id=80;

create sequence emp_1287271_seq
start with 1
increment by 1
maxvalue 5000
nocache
nocycle;