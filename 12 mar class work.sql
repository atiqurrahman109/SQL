select first_name,department_id,salary
from employees
where (salary,department_id) in
( select min(salary),department_id
from employees
group by department_id)
order by department_id;


select*from departments

where department_id in(
    
    select department_id
    from employees
    group by DEPARTMENT_ID
    having max(salary)>10000);

-57. Display details of departments in which the maximum salary
--is more than 10000

SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_ID IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY)>10000);

select salary
from employees;

select*from departments

where manager_id in
(select employee_id
from employees
where first_name='Smith');

 Display details of departments managed by ‘Smith’
 
SELECT * FROM DEPARTMENTS 
WHERE MANAGER_ID IN
 (SELECT EMPLOYEE_ID 
 FROM EMPLOYEES 
 WHERE FIRST_NAME='SMITH');
 
 -60. Display employees who did not do any job in the past.
 


 SELECT * FROM EMPLOYEES 
 WHERE EMPLOYEE_ID NOT IN
 (SELECT EMPLOYEE_ID 
 FROM JOB_HISTORY);
 
1.... -------------display details of managr who manage more than 5 employees-------

select * from departments
where manager_id in
(select manager_id 
from employees
group by manager_id
having  manager_id >5);

1....-------------display details of managr who manage more than 5 employees-------(sir worked)
SELECT FIRST_NAME FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
 (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING COUNT(*)>5);


2....------------------display the dept into which no employee joind in last 2 year----------
select*from employees
where hire_date not in

(select hire_date
from employees
group by hire_date
having by hire_date>2);

-----------alter------
select*from job_history
where start_date not in

(select start_date
from job_history
group by start_date
having by start_date>2);

2...------------------display the dept into which no employee joind in last 2 year----------sir worked

 SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );


3..--------display details of current job for employees who worked as it prog in the past------------------

select*from employees
where job_id in
(select job_id 
from EMPLOYEES
where job_id='IT_PROG');

----------------ALTERNATIVE-------------------

select*from jobs
where job_id in
(select job_id 
from job_history
where job_id='IT_PROG');


select job_id 
from job_history
where job_id='IT_PROG';

3....--------display details of current job for employees who worked as it prog in the past------------------sir worked

SELECT * FROM JOBS
 WHERE JOB_ID IN
 (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID='IT_PROG'))






