select last_name,hire_date,salary
from employees
where hire_date> (

        select hire_date
        from employees
        where last_name='vargas')
        
        and (
        select salary
        from employees
        where last_name='vargas');
        
        
        select employee_id,last_name,salary
        from employees
        where salary >(select avg (salary)
        from employees
        );
        
        select avg (salary)
        from employees;
        
        
        select employee_id,last_name
        from employees
        where department_id in ( select department_id 
        from employees
        where last_name like '%u%');
        
        
        select department_id 
        from employees
        where last_name like '%u%');
        
        
        select last_name,department_id,job_id
        from employees
        where department_id in(select department_id
        from departments
        where location_id='1700')
        order by department_id ;
        
        select department_id
        from departments;
        
         select location_id
        from departments;
        
        ------------create a report for hr that display the last name and salary of every employee who report to the king----------
        
        select last_name,salary
        from employees
        where manager_id in( select employee_id
        from employees
        where last_name = 'King');
        
    
        
        
        