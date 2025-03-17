create table sadiar(
id number,
emane VARCHAR2(30)
);

alter table sadiar add
constraint  sadiar_id_pk primary key(id);

alter table sadiar
modify name VARCHAR2(10);

alter table sadiar
rename column emane to userName;

select*from sadiar;

select constraint_name
from